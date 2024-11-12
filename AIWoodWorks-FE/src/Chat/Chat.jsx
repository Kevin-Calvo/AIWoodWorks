import React, { useEffect, useState } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import './Chat.css';

function Chat() {
  const location = useLocation();
  const navigate = useNavigate();
  const { prompt, imageUrl, fabricanteName } = location.state || {};

  const [messages, setMessages] = useState([]);

  useEffect(() => {
    // Primer mensaje de la solicitud
    setMessages([
      {
        sender: 'Usuario',
        type: 'sender',
        text: (
          <>
            <strong>Nueva Solicitud De Mueble</strong><br />
            <strong>Descripción:</strong><br />
            <p>"{prompt || ''}"</p><br />
            <strong>Imagen:</strong><br />
            {imageUrl && <img src={imageUrl} alt="Furniture Design" className="generated-image" />}
          </>
        ),
        image: imageUrl || null,
      },
    ]);

    // Mensaje automático del fabricante
    const timer = setTimeout(() => {
      setMessages((prevMessages) => [
        ...prevMessages,
        {
          sender: 'Fabricante',
          type: 'receiver',
          text: 'Gracias por tu solicitud. En breve te enviaré la cotización.',
          image: null,
        },
      ]);
    }, 5000);

    return () => clearTimeout(timer);
  }, [prompt, imageUrl]);

  // Función para redirigir a la página de pago
  const handleSealDeal = () => {
    navigate('/payment', { state: { prompt, imageUrl, fabricanteName } });
  };

  return (
    <>
      {/* Header con logo en blanco */}
      <header className="header-bar">
        <a href="/" className="logo">AIWoodWorks</a>
        <nav>
          <a href="/logout">Logout</a>
        </nav>
      </header>

      {/* Contenedor principal */}
      <div className="container">
        <h2 className="custom-h2">{fabricanteName}</h2>

        {/* Caja de chat para mostrar los mensajes */}
        <div className="chat-box">
          {messages.map((message, index) => (
            <div key={index} className={`message ${message.type}`}>
              <div className="message-text">{message.text}</div>
            </div>
          ))}
        </div>

        {/* Campo de entrada de texto y botones */}
        <div className="input-group">
          <input type="text" placeholder="Escribe tu mensaje aquí..." disabled />
          <button className="send-button" disabled>Send</button>
        </div>

        {/* Botón para sellar el trato */}
        <button className="seal-deal-button" onClick={handleSealDeal}>
          Seal Deal
        </button>
      </div>
    </>
  );
}

export default Chat;
