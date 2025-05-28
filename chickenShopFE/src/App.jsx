import { Routes, Route } from "react-router-dom";
import { publicRoutes } from './route/routes.jsx';

function App() {
    return (
        <Routes>
            {publicRoutes.map((route, index) => (
                <Route key={index} path={route.path} element={route.element} />
            ))}
        </Routes>
    );
}

export default App;
