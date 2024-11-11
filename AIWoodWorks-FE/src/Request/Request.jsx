import { useState, useRef } from 'react';
import { useNavigate } from 'react-router-dom';
import './Request.css';

function AIImageRequest() {
  const [messages, setMessages] = useState([]);
  const [showDesignButton, setShowDesignButton] = useState(false);
  const [loading, setLoading] = useState(false); // Estado de carga
  const userInputRef = useRef(null);
  const chatBoxRef = useRef(null);
  const navigate = useNavigate();
  const [generatedImage, setGeneratedImage] = useState(null);
  const [userPrompt, setUserPrompt] = useState('');

  const sendMessage = async () => {
    const userInput = userInputRef.current.value;

    setMessages((prevMessages) => [
      ...prevMessages,
      { text: `${userInput}`, isUser: true },
    ]);

    setUserPrompt(userInput);
    setLoading(true); // Activar el estado de carga

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
      const match = responseData.match(/generated_image_\d+\.png/);
      if (!match) {
        throw new Error("Image name not found in response");
      }
      const imageName = match[0];

      const imageResponse = await fetch(`http://localhost:8080/api/imagenes/get/${imageName}`);
      if (!imageResponse.ok) {
        throw new Error(`Error fetching image: ${imageResponse.status}`);
      }
      
      const imageBlob = await imageResponse.blob();
      const imageUrl = URL.createObjectURL(imageBlob);
      setGeneratedImage(imageUrl);

      setMessages((prevMessages) => [
        ...prevMessages,
        {
          text: 'Here is your design suggestion!',
          image: imageUrl,
        },
      ]);
    } catch (error) {
      console.error("Error al generar la imagen:", error);
      setMessages((prevMessages) => [
        ...prevMessages,
        {
          text: 'Error generating the design. Please try again.',
        },
      ]);
    }

    setLoading(false); // Desactivar el estado de carga
    setShowDesignButton(true);
    userInputRef.current.value = '';
    chatBoxRef.current.scrollTop = chatBoxRef.current.scrollHeight;
  };

  const makeDesign = () => {
    navigate('/sugerencia', { state: { prompt: userPrompt, imageUrl: generatedImage } });
  };

  return (
    <>
      <header>
        <div className="logo">AIWoodworks</div>
        <nav>
          <a href="/logout">Logout</a>
        </nav>
      </header>

      <div className="container">
        <h2 className="custom-h2">Chat with AI for Designs</h2>
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

        <div className="input-group">
          <input
            type="text"
            ref={userInputRef}
            placeholder="Type your design prompt here..."
            disabled={loading} // Desactiva el input si está cargando
          />
          <button
            className="send-button"
            onClick={sendMessage}
            disabled={loading} // Desactiva el botón si está cargando
          >
            {loading ? (
              <div className="spinner"></div> // Muestra el spinner si está cargando
            ) : (
              'Send'
            )}
          </button>
        </div>

        {showDesignButton && (
          <button className="make-design-button" onClick={makeDesign}>
            Make Design
          </button>
        )}
      </div>
    </>
  );
}

export default AIImageRequest;




