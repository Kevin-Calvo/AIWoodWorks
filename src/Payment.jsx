import { useState } from 'react';
import './Payment.css';

function PaymentPage() {
  const [paymentMethod, setPaymentMethod] = useState('creditCard'); // Default payment method
  const [cardNumber, setCardNumber] = useState('');
  const [expiryDate, setExpiryDate] = useState('');
  const [cvv, setCvv] = useState('');
  const [sinpeNumero, setSinpeNumero] = useState('');

  const handlePaymentMethodChange = (event) => {
    setPaymentMethod(event.target.value);
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    alert('Payment processed successfully!'); // Placeholder for payment processing
  };

  return (
    <>
      <header>
        <div className="logo">AIWoodworks</div>
      </header>

      <div className="container">
        <h2>Payment Page</h2>
        <form onSubmit={handleSubmit}>
          {/* Payment Method Selection */}
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

          {/* Credit Card Payment Fields */}
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

          {/* Sinpe Payment Field */}
          {paymentMethod === 'sinpe' && (
            <div className="form-group">
              <label htmlFor="sinpeNumero">Sinpe Number:</label>
              <input
                type="email"
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
        <a href="#">Cancel</a>
      </div>
    </>
  );
}

export default PaymentPage;
