import './App.css';

function App() {
  return (
    <>
      {/* Header with logo and navigation */}
      <header>
        <div className="logo">AIWoodworks</div>
        <nav>
          <a href="/login">Login</a>
          <a href="/register">Register</a>
        </nav>
      </header>

      {/* Main container with navigation buttons */}
      <div className="container">
        <h2>Welcome to AIWoodworks</h2>

        {/* Navigation Buttons */}
        <div className="button-group">
          <a href="/request" className="nav-button">Request Design</a>
          <a href="/profile" className="nav-button">Profile</a>
        </div>
      </div>
    </>
  );
}

export default App;
