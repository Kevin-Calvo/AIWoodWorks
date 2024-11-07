import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import App from './App/App';
import LoginPage from './Login/Login';
import RegisterPage from './Register/Register';
import ChatPage from './Chat/Chat';
import RequestPage from './Request/Request';
import ProfilePage from './Profile/Profile';
import PaymentPage from './Payment/Payment';
//import './index.css';

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<App />} />
        <Route path="/login" element={<LoginPage />} />
        <Route path="/register" element={<RegisterPage />} />
        <Route path="/chat" element={<ChatPage />} />
        <Route path="/request" element={<RequestPage />} />
        <Route path="/profile" element={<ProfilePage />} />
        <Route path="/payment" element={<PaymentPage />} />
      </Routes>
    </BrowserRouter>
  </React.StrictMode>
);
