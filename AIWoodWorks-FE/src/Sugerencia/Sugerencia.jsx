import React, { useState, useEffect } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';
import './Sugerencia.css';

function SugerenciaPage() {
  const [fabricantes, setFabricantes] = useState([]);
  const location = useLocation(); // Usamos useLocation para acceder a los datos enviados
  const navigate = useNavigate();

  // Obtener los datos del prompt y la imagen
  const { prompt, imageUrl } = location.state || {};

  useEffect(() => {
    setFabricantes([
      { id: 1, name: 'Fabricante 1', location: 'Puriscal, San José, Costa Rica', price: 5, rating: 4.5 },
      { id: 2, name: 'Fabricante 2', location: 'Desamparados, San José, Costa Rica', price: 4, rating: 4.8 },
      { id: 3, name: 'Fabricante 3', location: 'Escazú, San José, Costa Rica', price: 3, rating: 4.3 },
    ]);
  }, []);

  const startChat = (fabricanteId) => {
    // Navegar a la página de chat pasando el prompt y la imagen como parte del estado
    navigate(`/chat`, { state: { prompt, imageUrl, fabricanteId } });
  };

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
      {prompt && (
        <div className="ai-suggestion">
          <h3>Prompt: {prompt}</h3>
          {imageUrl && <img src={imageUrl} alt="Generated Design" className="generated-image" />}
        </div>
      )}
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


