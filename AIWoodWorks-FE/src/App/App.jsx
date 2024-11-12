import './App.css';

function App() {
  return (
    <>
      {/* Header con logo como botón */}
      <header className="header-bar">
        <a href="/" className="logo">AIWoodWorks</a>
        <nav>
          <a href="/login">Login</a>
          <a href="/register">Register</a>
        </nav>
      </header>

      {/* Contenedor principal */}
      <div className="wrapper">
        <h1 style={{ color: '#2E2B41' }}>Bienvenido a AIWoodWorks</h1>
        <p>Descubre diseños personalizados para tus muebles</p>

        {/* Botones de navegación */}
        <div className="button-group">
          <a href="/request" className="nav-button">Solicitar Diseño</a>
          <a href="/profile" className="nav-button">Perfil</a>
        </div>
      </div>
    </>
  );
}

export default App;
