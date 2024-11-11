import React, { useEffect, useState } from 'react';
import { useLocation } from 'react-router-dom';
import './Chat.css';

function Chat() {
  const location = useLocation();
  const { prompt, imageUrl, fabricanteName } = location.state || {};

  const [messages, setMessages] = useState([]);

  useEffect(() => {
    // Primer mensaje de la solicitud
    setMessages([
      {
        sender: 'Usuario',
        type: 'sender', // Asegura que el mensaje del usuario esté a la derecha
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

    // Segundo mensaje del fabricante, 5 segundos después
    const timer = setTimeout(() => {
      setMessages((prevMessages) => [
        ...prevMessages,
        {
          sender: 'Fabricante',
          type: 'receiver', // Asegura que el mensaje del fabricante esté a la izquierda
          text: 'Gracias por tu solicitud. En breve te enviaré la cotización.',
          image: null,
        },
      ]);
    }, 5000);

    // Limpiar el temporizador si el componente se desmonta
    return () => clearTimeout(timer);
  }, [prompt, imageUrl]);

  return (
    <>
      {/* Encabezado con el título */}
      <header>
        <div className="logo">AIWoodworks</div>
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
          <button className="send-button" disabled>
            Send
          </button>
        </div>

        {/* Botón para sellar el trato */}
        <button className="seal-deal-button" disabled>
          Seal Deal
        </button>
      </div>
    </>
  );
}

export default Chat;






