import { useState } from 'react';
import reactLogo from './assets/react.svg';
import viteLogo from '/vite.svg';
import './App.css';

function App() {
  const [count, setCount] = useState(0);

  return (
    <>
      {/* Header with logo and login/register options */}
      <header>
        <div className="logo">AIWoodworks</div>
        <nav>
          <a href="#">Login</a>
          <a href="#">Register</a>
        </nav>
      </header>

      {/* Main container for posts */}
      <div className="container">
        <h2>Posts</h2>
        {/* Sample post */}
        <div className="post">
          <div className="post-title">Sample Post Title</div>
          <div className="post-content">
            This is a sample post. The real posts will be loaded here from the database later.
          </div>
        </div>

        {/* Future posts will be dynamically populated here */}
      </div>
    </>
  );
}

export default App;
