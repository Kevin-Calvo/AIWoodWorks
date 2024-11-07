import { useState, useEffect } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';  // Import useNavigate and useLocation from react-router-dom
import './Chat.css';

function Chat() {
  const [messages, setMessages] = useState([]);
  const [userInput, setUserInput] = useState('');
  const navigate = useNavigate();  // Initialize navigate
  const location = useLocation();  // Get location to retrieve passed state
  const { prompt, imageUrl, fabricanteId } = location.state || {};  // Get prompt and imageUrl from location.state

  useEffect(() => {
    if (prompt && imageUrl) {
      // Add initial system message with the prompt and image
      setMessages([
        { sender: false, text: `Nueva Solicitud de Mueble\nDescripcion\n"${prompt}"` },
        { sender: false, text: `Imagen\n` },
        { sender: false, text: `${imageUrl ? <img src={imageUrl} alt="Furniture Design" className="generated-image" /> : 'No image provided'}` },
      ]);
    }
  }, [prompt, imageUrl]);

  const sendMessage = () => {
    if (userInput.trim() === '') return;

    // Add user message to the messages array
    setMessages(prevMessages => [
      ...prevMessages,
      { sender: true, text: userInput },
    ]);

    // Simulate a response from the receiver
    setMessages(prevMessages => [
      ...prevMessages,
      { sender: false, text: `Received: ${userInput}` },
    ]);

    // Clear the input field
    setUserInput('');
  };

  const sealDeal = () => {
    // Redirect to the payment screen when sealing the deal
    navigate('/payment');  // Navigate to the payment page
  };

  return (
    <>
      {/* Header with logo */}
      <header>
        <div className="logo">AIWoodworks</div>
      </header>

      {/* Main container for chat */}
      <div className="container">
        <h2>Chat con Fabricante {fabricanteId}</h2>

        {/* Chat box to display messages */}
        <div className="chat-box">
          {messages.map((message, index) => (
            <div key={index} className={`message ${message.sender ? 'sender' : 'receiver'}`}>
              <p>{message.text}</p>
            </div>
          ))}
        </div>

        {/* Input group for user prompts */}
        <div className="input-group">
          <input
            type="text"
            value={userInput}
            onChange={(e) => setUserInput(e.target.value)}
            placeholder="Type your message here..."
          />
          <button className="send-button" onClick={sendMessage}>
            Send
          </button>
        </div>

        {/* Button to seal the deal */}
        <button className="seal-deal-button" onClick={sealDeal}>
          Seal Deal
        </button>
      </div>
    </>
  );
}

export default Chat;

