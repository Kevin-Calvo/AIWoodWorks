import React, { useState, useEffect } from 'react';
import { useNavigate, useLocation, Link } from 'react-router-dom';
import './Sugerencia.css';

function SugerenciaPage() {
  const [fabricantes, setFabricantes] = useState([]);
  const location = useLocation();
  const navigate = useNavigate();

  const { prompt, imageUrl } = location.state || {};

  useEffect(() => {
    setFabricantes([
      { id: 1, name: 'Gustavo Otarola', location: 'Puriscal, San José, Costa Rica', price: 5, rating: 4.5 },
      { id: 2, name: 'Andrey Calvo', location: 'Desamparados, San José, Costa Rica', price: 4, rating: 4.8 },
      { id: 3, name: 'Rolando Rodriguez', location: 'Escazú, San José, Costa Rica', price: 3, rating: 4.3 },
    ]);
  }, []);

  const startChat = (fabricanteId, fabricanteName) => {
    navigate(`/chat`, { state: { prompt, imageUrl, fabricanteId, fabricanteName } });
  };

  const renderPriceStars = (price) => {
    return '★'.repeat(price) + '☆'.repeat(5 - price);
  };

  return (
    <>
      {/* Header con logo y navegación */}
      <header className="header-bar">
        <a href="/" className="logo">AIWoodWorks</a>
        <nav>
          <a href="/logout">Logout</a>
        </nav>
      </header>

      <div className="sugerencia-container">
        <h2 className="custom-h2">Suggested Manufacturers</h2>

        <div className="fabricantes-list">
          {fabricantes.map((fabricante) => (
            <div key={fabricante.id} className="fabricante-row">
              <div className="fabricante-info">
                <h3>{fabricante.name}</h3>
                <p><strong>Rating:</strong> {fabricante.rating} ⭐ | <strong>Costo:</strong> {renderPriceStars(fabricante.price)}</p>
                <p><strong>Ubicación:</strong> {fabricante.location}</p>
              </div>
              <button onClick={() => startChat(fabricante.id, fabricante.name)} className="chat-button">
                Chat
              </button>
            </div>
          ))}
        </div>
      </div>
    </>
  );
}

export default SugerenciaPage;
