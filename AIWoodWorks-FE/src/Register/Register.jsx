import { useState } from 'react';
import './Register.css';

function RegistrationForm() {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    password: '',
    localization: '',
    phone: '',
    furnitureMaker: false,
    description: '',
    profilePicture: null,
  });
  const [showPassword, setShowPassword] = useState(false);

  const handleInputChange = (e) => {
    const { name, value, type, checked, files } = e.target;
    setFormData({
      ...formData,
      [name]: type === 'checkbox' ? checked : type === 'file' ? files[0] : value,
    });
  };

  const togglePasswordVisibility = () => {
    setShowPassword(!showPassword);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log('Form data submitted:', formData);

    setFormData({
      name: '',
      email: '',
      password: '',
      localization: '',
      phone: '',
      furnitureMaker: false,
      description: '',
      profilePicture: null,
    });
  };

  return (
    <>
      {/* Header con logo como botón */}
      <header className="header-bar">
        <a href="/" className="logo">AIWoodWorks</a>
      </header>

      <div className="container">
        <h2>Register</h2>
        <form onSubmit={handleSubmit} encType="multipart/form-data">
          <div className="form-group">
            <label htmlFor="name">Name</label>
            <input
              type="text"
              id="name"
              name="name"
              value={formData.name}
              onChange={handleInputChange}
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="email">Email</label>
            <input
              type="email"
              id="email"
              name="email"
              value={formData.email}
              onChange={handleInputChange}
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="password">Password</label>
            <input
              type={showPassword ? 'text' : 'password'}
              id="password"
              name="password"
              value={formData.password}
              onChange={handleInputChange}
              required
            />
            <div className="password-toggle">
              <button type="button" onClick={togglePasswordVisibility}>
                {showPassword ? 'Hide Password' : 'See Password'}
              </button>
            </div>
          </div>

          <div className="form-group">
            <label htmlFor="localization">Localization</label>
            <input
              type="text"
              id="localization"
              name="localization"
              value={formData.localization}
              onChange={handleInputChange}
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="phone">Phone Number</label>
            <input
              type="tel"
              id="phone"
              name="phone"
              pattern="[0-9]*"
              value={formData.phone}
              onChange={handleInputChange}
              required
            />
          </div>

          <div className="checkbox-group">
            <input
              type="checkbox"
              id="furnitureMaker"
              name="furnitureMaker"
              checked={formData.furnitureMaker}
              onChange={handleInputChange}
            />
            <label htmlFor="furnitureMaker">Are you a furniture maker?</label>
          </div>

          <button type="submit" className="register-button">Register</button>
        </form>

        <div className="footer-text">
          Already have an account? <a href="/login">Login here</a>
        </div>
      </div>
    </>
  );
}

export default RegistrationForm;
