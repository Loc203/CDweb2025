import React from "react";
import "../assets/css/header.css";
import "../assets/css/main.css";

const Header = () => {
    return (
        <header id="header" style={{ zIndex: 1000 }}>
            <div className="grid wide">
                <nav className="navbar">
                    <div className="hlogo">
                        <div className="navbar__logo">
                            <a href="/" className="navbar__logo--link">
                                <img src="../assets/img/logo/logo-2.jpg" alt="" className="navbar__logo--img" />
                            </a>
                        </div>
                    </div>
                    <div className="navbar__content">
                        <ul className="navbar__list">
                            {/* Nếu là admin:
                            <li className="navbar__list--item">
                                <a href="/dashboard" className="navbar__list--link">TRANG QUẢN LÝ</a>
                            </li>
                            */}
                            <li className="navbar__list--item">
                                <a href="/" className="navbar__list--link navbar__list--link--active">TRANG CHỦ</a>
                            </li>
                            <li className="navbar__list--item">
                                <a href="/thucdon" className="navbar__list--link">THỰC ĐƠN</a>
                            </li>
                            <li className="navbar__list--item">
                                <a href="/vechungtoi" className="navbar__list--link">VỀ KFP</a>
                            </li>
                            <li className="navbar__list--item navbar__list--user" style={{ marginRight: "-4px" }}>
                                <div className="dropdown" style={{ marginRight: "5px", display: "flex", alignItems: "center" }}>
                                    <i className="navbar__list-icon fa-regular fa-user" style={{ marginRight: "5px", display: "flex", alignItems: "center" }}></i>
                                    {/* Nếu đã đăng nhập:
                                    <div className="dropdown-content">
                                        <a href="/thongtintaikhoan" className="navbar__list--link">THÔNG TIN TÀI KHOẢN</a>
                                        <a href="/logout" className="navbar__list--link">ĐĂNG XUẤT</a>
                                    </div>
                                    <p style={{ display: "flex", alignItems: "center", textDecoration: "none", fontSize: "1.6rem", color: "var(--header-color)", lineHeight: "30px", fontWeight: 700, marginRight: "10px" }}>
                                        user email ở đây
                                    </p>
                                    */}
                                    {/* Nếu chưa đăng nhập: */}
                                    <a href="/login" className="navbar__list--link">ĐĂNG NHẬP</a>
                                </div>
                            </li>
                            <li className="navbar__list--item">
                                <a href="/giohang" className="navbar__list--link">
                                    <i className="navbar__list-icon fa-solid fa-cart-shopping"></i>
                                </a>
                                <div className="cart-quantity">
                                    <span className="quantity">{/* Số lượng sản phẩm trong giỏ */}</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
    );
};

export default Header;
