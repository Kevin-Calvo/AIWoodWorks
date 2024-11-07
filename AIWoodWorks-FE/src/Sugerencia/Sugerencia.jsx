import React, { useState, useEffect } from 'react';
import './Sugerencia.css';

function SugerenciaPage() {
  const [fabricantes, setFabricantes] = useState([]);

  // Simulamos los perfiles de los fabricantes
  useEffect(() => {
    // Puedes reemplazar esto con una llamada a la API para obtener los fabricantes
    setFabricantes([
      { id: 1, name: 'Fabricante 1', location: 'San José, Costa Rica', price: 5, rating: 4.5 },
      { id: 2, name: 'Fabricante 2', location: 'San Francisco, USA', price: 4, rating: 4.8 },
      { id: 3, name: 'Fabricante 3', location: 'Ciudad de México, México', price: 3, rating: 4.3 },
    ]);
  }, []);

  const startChat = (fabricanteId) => {
    // Lógica para iniciar el chat, puede ser redirigir a otra página o abrir un chat
    alert(`Starting chat with Fabricante ${fabricanteId}`);
  };

  // Función para renderizar las estrellas del precio
  const renderPriceStars = (price) => {
    let stars = [];
    for (let i = 0; i < 5; i++) {
      stars.push(i < price ? '★' : '☆');
    }
    return stars.join(' ');
  };

  return (
    <div className="sugerencia-container">
      <h2>Fabricantes Disponibles</h2>
      <div className="fabricantes-list">
        {fabricantes.map((fabricante) => (
          <div key={fabricante.id} className="fabricante-card">
            <div className="fabricante-info">
              <h3>{fabricante.name}</h3>
              <p><strong>Location:</strong> {fabricante.location}</p>
              <p><strong>Price Rating:</strong> {renderPriceStars(fabricante.price)}</p>
              <p><strong>Rating:</strong> {fabricante.rating} ⭐</p>
              <button onClick={() => startChat(fabricante.id)} className="chat-button">
                Chat with {fabricante.name}
              </button>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export default SugerenciaPage;
