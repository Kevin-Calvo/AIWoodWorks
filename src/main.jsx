import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import Payment from './Payment.jsx'
//import './index.css'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <Payment />
  </StrictMode>,
)
