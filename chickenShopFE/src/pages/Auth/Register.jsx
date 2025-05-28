import React, { useState } from "react";
import HeaderLogin from "../../components/HeaderLogin.jsx";
import Footer from "../../components/Footer.jsx";
import "../../assets/css/register.css";
import "../../assets/css/main.css";
import bgImg from '../../assets/img/white-background/background-login.jpg';

const Register = () => {
    const [form, setForm] = useState({
        userName: "",
        user: "",
        pass: "",
        repass: "",
        phone: "",
        gioiTinh: "Nam",
        diaChi: "",
        ngaySinh: ""
    });
    const [error, setError] = useState("");

    const handleChange = (e) => {
        setForm({ ...form, [e.target.name]: e.target.value });
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        // TODO: Gửi dữ liệu đăng ký lên server
        // Nếu lỗi, setError("...")
    };

    return (
        <div style={{ display: 'flex', flexDirection: 'column', minHeight: '100vh' }}>
            <HeaderLogin />
            <div style={{ flex: 1, display: "flex", alignItems: "center", justifyContent: "center", padding: "96px 0", minHeight: "600px" }}>
                <div className="modal">
                    <div className="modal_overlay">
                        <div className="modal_body">
                            <div className="modal_inner">
                                <div className="login-register_container">
                                    <img src={bgImg} className="background-login_img" alt="Background" />
                                    <form onSubmit={handleSubmit}>
                                        <div className="register-form_container" id="register-container">
                                            <div className="register-form">
                                                <div className="register-form_header">
                                                    <span className="register-form_heading">Đăng ký</span>
                                                </div>
                                                {error && <div className="text-danger" style={{ fontSize: '1.5rem', color: 'red', marginTop: 30, marginBottom: -30 }}>{error}</div>}
                                                <div className="register-form_input">
                                                    <div className="register-form_group">
                                                        <input name="userName" type="text" className="register-form_input" placeholder="Nhập tên khách hàng" autoFocus required value={form.userName} onChange={handleChange} />
                                                    </div>
                                                    <div className="register-form_group">
                                                        <input name="user" type="email" className="register-form_input" placeholder="Nhập email" required value={form.user} onChange={handleChange} />
                                                    </div>
                                                    <p className="register-form_note-error">* Bao gồm ít nhất  1 ký tự ghi hoa, ghi thường, chữ số và  ký tự đặc biệt ( 8~20 ký tự )</p>
                                                    <div className="register-form_group">
                                                        <input name="pass" type="password" className="register-form_input" placeholder="Nhập mật khẩu " required value={form.pass} onChange={handleChange} />
                                                    </div>
                                                    <div className="register-form_group">
                                                        <input name="repass" type="password" className="register-form_input" placeholder="Nhập lại mật khẩu" required value={form.repass} onChange={handleChange} />
                                                    </div>
                                                    <div className="register-form_input--col">
                                                        <div className="register-form_group--col">
                                                            <input name="phone" className="register-form_input--col" type="text" placeholder="Số điện thoại" value={form.phone} onChange={handleChange} />
                                                        </div>
                                                        <div className="register-form_group--col">
                                                            <label htmlFor="gioiTinh" style={{ fontSize: '1.5rem' }}>Chọn giới tính:</label>
                                                            <select name="gioiTinh" id="gioiTinh" style={{ fontSize: '1.5rem' }} value={form.gioiTinh} onChange={handleChange}>
                                                                <option value="Nam">Nam</option>
                                                                <option value="Nữ">Nữ</option>
                                                                <option value="Khác">Khác</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div className="register-form_input--col">
                                                        <div className="register-form_group--col">
                                                            <p className="register-form_note-error">* Quận Huyện, Phường Xã</p>
                                                            <input name="diaChi" type="text" className="register-form_input" placeholder="Nhập địa chỉ" required value={form.diaChi} onChange={handleChange} />
                                                        </div>
                                                        <div className="register-form_group--col">
                                                            <input id="ngaySinh" name="ngaySinh" type="date" className="register-form_input" placeholder="Ngày sinh" required value={form.ngaySinh} onChange={handleChange} />
                                                        </div>
                                                    </div>
                                                    <div className="register-form_control" style={{ paddingTop: 28 }}>
                                                        <button type="submit" className="register-btn" style={{ paddingTop: -15 }}>ĐĂNG KÝ</button>
                                                    </div>
                                                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid&redirect_uri=https://localhost:8443/login&response_type=code&client_id=224511662176-ekl8bu51fgqtp04m9dqnegm5ah8d6qjo.apps.googleusercontent.com&approval_prompt=force" className="google-login">
                                                        <div className="register" style={{ marginTop: -5 }}>
                                                            <h3 className="google-text">Đăng ký với Google</h3>
                                                            <a href="" className="register-switch">
                                                                <i style={{ marginLeft: 7 }} className="fa-brands fa-google"></i>
                                                            </a>
                                                        </div>
                                                    </a>
                                                    <div className="register" style={{ marginTop: -5 }}>
                                                        <h3>Bạn đã có tài khoản?</h3>
                                                        <a href="/login" className="login-switch" style={{ marginTop: 17, marginLeft: 7 }}>Đăng nhập</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <Footer />
        </div>
    );
};

export default Register; 