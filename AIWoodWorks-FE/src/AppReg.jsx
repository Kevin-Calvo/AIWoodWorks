import { useState } from 'react';
import './AppReg.css';

function AppReg() {
  const [isDropdownVisible, setIsDropdownVisible] = useState(false);

  const toggleDropdown = () => {
    setIsDropdownVisible(!isDropdownVisible);
  };

  // Close dropdown if clicking outside
  const handleClickOutside = (e) => {
    if (!e.target.closest('.profile-button') && !e.target.closest('.dropdown-menu')) {
      setIsDropdownVisible(false);
    }
  };

  return (
    <>
      {/* Header with logo and profile button */}
      <header onClick={handleClickOutside}>
        <div className="logo">AIWoodworks</div>
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

      {/* Main container for posts */}
      <div className="container">
        <h2>Posts</h2>
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
