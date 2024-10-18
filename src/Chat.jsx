import { useState } from 'react';
import './Chat.css';

function Chat() {
  const [messages, setMessages] = useState([]);
  const [userInput, setUserInput] = useState('');

  const sendMessage = () => {
    if (userInput.trim() === '') return;

    // Add user message to the messages array
    setMessages([...messages, { sender: true, text: userInput }]);

    // Simulate a response from the receiver
    setMessages(prevMessages => [
      ...prevMessages,
      { sender: true, text: userInput },
      { sender: false, text: `Received: ${userInput}` }
    ]);

    // Clear the input field
    setUserInput('');
  };

  const sealDeal = () => {
    alert('Deal sealed!'); // Placeholder for deal sealing action
  };

  return (
    <>
      {/* Header with logo */}
      <header>
        <div className="logo">AIWoodworks</div>
      </header>

      {/* Main container for chat */}
      <div className="container">
        <h2>Chat de negocio</h2>

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
