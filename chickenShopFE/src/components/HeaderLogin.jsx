import React from "react";
import "../assets/css/header.css";
import "../assets/css/main.css";
import logoImg from '../assets/img/logo/logo-2.jpg';

const HeaderLogin = () => {
    return (
        <header id="header" style={{ zIndex: 1000 }}>
            <div className="grid wide">
                <nav className="navbar">
                    <div className="hlogo">
                        <div className="navbar__logo">
                            <a href="/" className="navbar__logo--link">
                                <img src={logoImg} alt="" className="navbar__logo--img" />
                            </a>
                        </div>
                    </div>
                    <div className="navbar__content">
                        <ul className="navbar__list">
                            <li className="navbar__list--item"></li>
                            <li className="navbar__list--item"></li>
                            <li className="navbar__list--item"></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
    );
};

export default HeaderLogin; 