import React, { useEffect, useState } from 'react';
import { useLocation } from 'react-router-dom';
import './Chat.css';

function Chat() {
  const location = useLocation();
  const { prompt, imageUrl } = location.state || {}; // Obtiene el prompt y la imagen si están disponibles

  const [messages, setMessages] = useState([]);

  useEffect(() => {
    // Configura el mensaje inicial con el prompt y la imagen, dejando campos vacíos si no existen
    setMessages([
      {
        sender: 'Fabricante',
        text: `Nueva Solicitud De Mueble\n\nDescripción: "${prompt || ''}"\n\nImagen:`,
        image: imageUrl || null,
      },
    ]);
  }, [prompt, imageUrl]);

  return (
    <>
      {/* Encabezado con el título */}
      <header>
        <div className="logo">AIWoodworks</div>
      </header>

      {/* Contenedor principal */}
      <div className="container">
        <h2>Chat con Fabricante 3</h2>

        {/* Caja de chat para mostrar los mensajes */}
        <div className="chat-box">
          {messages.map((message, index) => (
            <div key={index} className="message receiver">
              <p>{message.text}</p>
              {message.image ? (
                <div className="image-container">
                  <img src={message.image} alt="Furniture Design" className="generated-image" />
                </div>
              ) : (
                <p>(No hay imagen)</p> // Texto alternativo si no hay imagen
              )}
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


