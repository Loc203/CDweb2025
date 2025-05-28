import HeaderLogin from "../components/HeaderLogin.jsx";
import Footer from "../components/Footer.jsx";
import Login from "../pages/Auth/Login.jsx";
import Register from "../pages/Auth/Register.jsx";

const PUBLIC_URL = {
    LOGIN: "/login",
    REGISTER: "/register",
};

const publicRoutes = [
    {
        path: PUBLIC_URL.LOGIN,
        element: (
            <Login />
        ),
    },
    {
        path: PUBLIC_URL.REGISTER,
        element: (
            <Register />
        ),
    },
];

export { publicRoutes, PUBLIC_URL };