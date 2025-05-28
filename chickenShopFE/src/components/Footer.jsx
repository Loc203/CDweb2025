import React from "react";

const Footer = () => {
    return (
        <footer id="footer">
            <div className="grid wide">
                <div className="row">
                    <div className="footer-info col l-4">
                        <h3 className="footer-title">KFP CHICKEN VIETNAM</h3>
                        <ul className="footer-list">
                            <li className="footer-list__item">
                                <i className="footer-icon fa-solid fa-location-dot"></i>
                                Khu Phố 6, Thủ Đức, Thành phố Hồ Chí Minh
                            </li>
                            <li className="footer-list__item">
                                <i className="footer-icon fa-solid fa-phone"></i>
                                0123456789
                            </li>
                            <li className="footer-list__item">
                                <i className="footer-icon fa-regular fa-envelope"></i>
                                lamhongphuc0110@gmail.com
                            </li>
                            <li className="footer-list__item">
                                <i className="footer-icon fa-solid fa-globe"></i>
                                https://onlyfans.com/hongphuclam
                            </li>
                        </ul>
                    </div>
                    <div className="footer-info col l-4">
                        <h3 className="footer-title">Thông Tin</h3>
                        <ul className="footer-list">
                            <li className="footer-list__item">
                                <a href="#" className="footer-list__item--link">Về KFP Chicken</a>
                            </li>
                            <li className="footer-list__item">
                                <a href="#" className="footer-list__item--link">Thực đơn</a>
                            </li>
                            <li className="footer-list__item">
                                <a href="/lienhe" className="footer-list__item--link">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                    <div className="footer-info col l-4">
                        <ul className="footer-list__socials">
                            <h3 className="footer-title">Kết Nối</h3>
                            <li className="footer-list__item">
                                <a href="https://www.facebook.com/profile.php?id=100004867398813" className="footer-list__item-social--link">
                                    <i className="footer-icon fa-brands fa-facebook"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div className="copyright">
                    Copyright © 2023 Nhóm 35
                </div>
            </div>
        </footer>
    );
};

export default Footer;
