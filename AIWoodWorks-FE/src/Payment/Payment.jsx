import { useState } from 'react';
import { useLocation } from 'react-router-dom';
import './Payment.css';

function PaymentPage() {
  const location = useLocation();
  const { prompt, imageUrl, fabricanteName } = location.state || {};

  const [paymentMethod, setPaymentMethod] = useState('creditCard');
  const [cardNumber, setCardNumber] = useState('');
  const [expiryDate, setExpiryDate] = useState('');
  const [cvv, setCvv] = useState('');
  const [sinpeNumero, setSinpeNumero] = useState('');

  const handlePaymentMethodChange = (event) => {
    setPaymentMethod(event.target.value);
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    alert('Payment processed successfully!');
  };

  return (
    <>
      {/* Header con logo */}
      <header className="header-bar">
        <a href="/" className="logo">AIWoodWorks</a>
      </header>

      {/* Contenedor principal */}
      <div className="container">
        <h2>Payment Page</h2>

        {/* Mostrar información del fabricante y del diseño */}
        {fabricanteName && (
          <div className="fabricante-info">
            <h3>Fabricante: {fabricanteName}</h3>
            <p><strong>Descripción:</strong> {prompt}</p>
            {imageUrl && (
              <img src={imageUrl} alt="Furniture Design" className="design-image" />
            )}
          </div>
        )}

        {/* Formulario de pago */}
        <form onSubmit={handleSubmit}>
          <div className="form-group">
            <label>Payment Method:</label>
            <div>
              <label>
                <input
                  type="radio"
                  value="creditCard"
                  checked={paymentMethod === 'creditCard'}
                  onChange={handlePaymentMethodChange}
                />
                Credit Card
              </label>
              <label>
                <input
                  type="radio"
                  value="sinpe"
                  checked={paymentMethod === 'sinpe'}
                  onChange={handlePaymentMethodChange}
                />
                Sinpe
              </label>
            </div>
          </div>

          {/* Campos para tarjeta de crédito */}
          {paymentMethod === 'creditCard' && (
            <div className="credit-card-fields">
              <div className="form-group">
                <label htmlFor="cardNumber">Card Number:</label>
                <input
                  type="text"
                  id="cardNumber"
                  value={cardNumber}
                  onChange={(e) => setCardNumber(e.target.value)}
                  required
                />
              </div>
              <div className="form-group">
                <label htmlFor="expiryDate">Expiry Date:</label>
                <input
                  type="text"
                  id="expiryDate"
                  placeholder="MM/YY"
                  value={expiryDate}
                  onChange={(e) => setExpiryDate(e.target.value)}
                  required
                />
              </div>
              <div className="form-group">
                <label htmlFor="cvv">CVV:</label>
                <input
                  type="text"
                  id="cvv"
                  value={cvv}
                  onChange={(e) => setCvv(e.target.value)}
                  required
                />
              </div>
            </div>
          )}

          {/* Campo para pago por Sinpe */}
          {paymentMethod === 'sinpe' && (
            <div className="form-group">
              <label htmlFor="sinpeNumero">Sinpe Number:</label>
              <input
                type="text"
                id="sinpeNumero"
                value={sinpeNumero}
                onChange={(e) => setSinpeNumero(e.target.value)}
                required
              />
            </div>
          )}

          <button type="submit" className="submit-button">Pay Now</button>
        </form>
      </div>

      <div className="footer-text">
        <a href="/">Cancel</a>
      </div>
    </>
  );
}

export default PaymentPage;
