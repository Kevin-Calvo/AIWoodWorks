import { useState } from 'react';
import './Login.css';

function Login() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = (e) => {
    e.preventDefault();
    alert(`Logged in with email: ${email} and password: ${password}`);
    setEmail('');
    setPassword('');
  };

  return (
    <>
      {/* Header con logo como botón */}
      <header className="header-bar">
        <a href="/" className="logo">AIWoodWorks</a>
      </header>

      {/* Contenedor principal para el formulario de inicio de sesión */}
      <div className="container">
        <h2>Login</h2>

        {/* Formulario de inicio de sesión */}
        <form onSubmit={handleLogin}>
          <div className="form-group">
            <label htmlFor="email">Email</label>
            <input
              type="email"
              id="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
            />
          </div>

          <div className="form-group">
            <label htmlFor="password">Password</label>
            <input
              type="password"
              id="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
            />
          </div>

          <button type="submit" className="login-button">
            Login
          </button>
        </form>

        {/* Enlace para registro */}
        <div className="footer-text">
          Don't have an account? <a href="/register">Register here</a>
        </div>
      </div>
    </>
  );
}

export default Login;
