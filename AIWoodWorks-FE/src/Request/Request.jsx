import { useState, useRef } from 'react';
import { useNavigate } from 'react-router-dom'; // Importa useNavigate
import './Request.css';

function AIImageRequest() {
  const [messages, setMessages] = useState([]);
  const [showDesignButton, setShowDesignButton] = useState(false);
  const userInputRef = useRef(null);
  const chatBoxRef = useRef(null);
  
  const navigate = useNavigate(); // Inicializa el hook navigate

  const sendMessage = async () => {
    const userInput = userInputRef.current.value;

    // Add user message to chat
    setMessages((prevMessages) => [
      ...prevMessages,
      { text: `You: ${userInput}`, isUser: true },
    ]);

    // Enviar el prompt al backend para generar la imagen
    try {
      const response = await fetch('http://localhost:8080/api/imagenes/generate', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ prompt: userInput }),
      });

      if (!response.ok) {
        throw new Error(`Error: ${response.status}`);
      }

      const responseData = await response.text();

      // Usar una expresión regular para encontrar el nombre del archivo y manejar el caso de nulo
      const match = responseData.match(/generated_image_\d+\.png/);
      if (!match) {
        throw new Error("Image name not found in response");
      }
      const imageName = match[0];

      // Realizar el GET para obtener la imagen
      const imageResponse = await fetch(`http://localhost:8080/api/imagenes/get/${imageName}`);
      if (!imageResponse.ok) {
        throw new Error(`Error fetching image: ${imageResponse.status}`);
      }
      
      // Convertir la respuesta a blob y crear una URL local para mostrar la imagen
      const imageBlob = await imageResponse.blob();
      const imageUrl = URL.createObjectURL(imageBlob);

      // Agregar la imagen al chat como respuesta de la IA
      setMessages((prevMessages) => [
        ...prevMessages,
        {
          text: 'AI: Here is your design suggestion!',
          image: imageUrl,
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
    // Navegar a la página de sugerencias al hacer clic en "Make Design"
    navigate('/sugerencia'); // Esto llevará al usuario a la ruta '/sugerencia'
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

