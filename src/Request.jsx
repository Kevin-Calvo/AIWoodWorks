import { useState, useRef } from 'react';
import './Request.css';

function AIImageRequest() {
  const [messages, setMessages] = useState([]);
  const [showDesignButton, setShowDesignButton] = useState(false);
  const userInputRef = useRef(null);
  const chatBoxRef = useRef(null);

  const sendMessage = () => {
    const userInput = userInputRef.current.value;

    // Add user message to chat
    setMessages((prevMessages) => [
      ...prevMessages,
      { text: `You: ${userInput}`, isUser: true },
    ]);

    // Simulate AI response with an image
    setMessages((prevMessages) => [
      ...prevMessages,
      {
        text: 'AI: Here is your design suggestion!',
        image: 'https://via.placeholder.com/300', // Replace with actual image URL
      },
    ]);

    // Show the "Make Design" button
    setShowDesignButton(true);

    // Clear input
    userInputRef.current.value = '';

    // Scroll to the bottom of the chat
    chatBoxRef.current.scrollTop = chatBoxRef.current.scrollHeight;
  };

  const makeDesign = () => {
    alert('Design made successfully!'); // Placeholder for design action
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
