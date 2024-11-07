import { useState, useRef } from 'react';
import './Request.css';

function AIImageRequest() {
  const [messages, setMessages] = useState([]);
  const [showDesignButton, setShowDesignButton] = useState(false);
  const userInputRef = useRef(null);
  const chatBoxRef = useRef(null);

  const sendMessage = async () => {
    const userInput = userInputRef.current.value;

    // Add user message to chat
    setMessages((prevMessages) => [
      ...prevMessages,
      { text: `You: ${userInput}`, isUser: true },
    ]);

    // Enviar el prompt al backend para obtener la imagen generada
    try {
      const response = await fetch('http://localhost:8080/api/imagenes/generate', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ prompt: userInput }), // Enviamos el prompt al backend
      });

      if (!response.ok) {
        throw new Error(`Error: ${response.status}`);
      }

      const data = await response.json(); // Suponiendo que el backend devuelve JSON con la URL de la imagen

      // Agregar la respuesta de la IA con la imagen al chat
      setMessages((prevMessages) => [
        ...prevMessages,
        {
          text: 'AI: Here is your design suggestion!',
          image: data.imageUrl || 'https://via.placeholder.com/300', // Usa la URL de la imagen devuelta
        },
      ]);
    } catch (error) {
      console.error("Error al generar la imagen:", error);
      setMessages((prevMessages) => [
        ...prevMessages,
        {
          text: 'AI: Error generating the design. Please try again.',
        },
      ]);
    }

    // Mostrar el botón "Make Design"
    setShowDesignButton(true);

    // Limpiar el input
    userInputRef.current.value = '';

    // Desplazar el chat hacia abajo
    chatBoxRef.current.scrollTop = chatBoxRef.current.scrollHeight;
  };

  const makeDesign = () => {
    alert('Design made successfully!'); // Placeholder para la acción de hacer el diseño
  };

  return (
    <>
      <header>
        <div className="logo">AIWoodworks</div>
      </header>

      <div className="container">
        <h2>Chat with AI for Designs</h2>
        {/* Chat box to display messages */}
        <div className="chat-box" ref={chatBoxRef}>
          {messages.map((msg, index) => (
            <div key={index} className={msg.isUser ? 'user-message' : 'ai-message'}>
              {msg.text}
              {msg.image && (
                <div className="image-container">
                  <img src={msg.image} alt="Design" />
                </div>
              )}
            </div>
          ))}
        </div>

        {/* Input group for user prompts */}
        <div className="input-group">
          <input
            type="text"
            ref={userInputRef}
            placeholder="Type your design prompt here..."
          />
          <button className="send-button" onClick={sendMessage}>
            Send
          </button>
        </div>

        {/* Button to make design */}
        {showDesignButton && (
          <button className="make-design-button" onClick={makeDesign}>
            Make Design
          </button>
        )}
      </div>

      <div className="footer-text">
        <a href="#">Logout</a>
      </div>
    </>
  );
}

export default AIImageRequest;
