import { useState } from 'react';
import './AppReg.css';

function AppReg() {
  const [isDropdownVisible, setIsDropdownVisible] = useState(false);

  const toggleDropdown = () => {
    setIsDropdownVisible(!isDropdownVisible);
  };

  // Cerrar el menú desplegable si se hace clic fuera de él
  const handleClickOutside = (e) => {
    if (!e.target.closest('.profile-button') && !e.target.closest('.dropdown-menu')) {
      setIsDropdownVisible(false);
    }
  };

  return (
    <>
      {/* Header con logo como botón y menú de perfil */}
      <header onClick={handleClickOutside} className="header-bar">
        <a href="/" className="logo" style={{ color: '#2E2B41' }}>AIWoodWorks</a>
        <nav>
          <button className="profile-button" onClick={toggleDropdown}>Stuff</button>
          {isDropdownVisible && (
            <div className="dropdown-menu" id="dropdown-menu">
              <a href="#">My Profile</a>
              <a href="#">Settings</a>
              <a href="#">Logout</a>
            </div>
          )}
        </nav>
      </header>

      {/* Contenedor principal para los posts */}
      <div className="container">
        <h2 style={{ color: '#2E2B41' }}>Posts</h2>
        <div className="post">
          <div className="post-title">Sample Post Title</div>
          <div className="post-content">
            This is a sample post. The real posts will be loaded here from the database later.
          </div>
        </div>
      </div>
    </>
  );
}

export default AppReg;
