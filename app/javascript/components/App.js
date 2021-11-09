import React from "react"
import PropTypes from "prop-types"
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Greeting from './Greeting';

const App = () => (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Greeting />} />
      </Routes>
    </BrowserRouter>
);

export default App
