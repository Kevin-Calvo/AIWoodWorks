import { useState } from 'react';
import './Login.css';

function Login() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleLogin = (e) => {
    e.preventDefault();

    // Placeholder for real login logic
    alert(`Logged in with email: ${email} and password: ${password}`);

    // Clear input fields
    setEmail('');
    setPassword('');
  };

  return (
    <>
      {/* Header with logo */}
      <header>
        <div className="logo">AIWoodworks</div>
      </header>

      {/* Main container for login form */}
      <div className="container">
        <h2>Login</h2>

        {/* Login Form */}
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

        {/* Additional links like registration */}
        <div className="footer-text">
          Don't have an account? <a href="#">Register here</a>
        </div>
      </div>
    </>
  );
}

export default Login;
