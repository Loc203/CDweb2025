import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { createBrowserRouter, RouterProvider } from "react-router";
import "./index.css";
import App from "./App.jsx";
import TestRouter from "./components/TestRouter.jsx";

const path = createBrowserRouter([
  { path: "/", element: <App /> },
  { path: "/testRouter", element: <TestRouter/> },
]);

createRoot(document.getElementById("root")).render(
  <StrictMode>
    <RouterProvider router={path} />
  </StrictMode>
);
