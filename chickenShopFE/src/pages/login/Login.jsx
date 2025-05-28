import React, { useState, useEffect } from 'react';
import "../../assets/css/login.css";
import "../../assets/css/main.css";
import bgImg from '../../assets/img/white-background/background-login.jpg';

const Login = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState(null);

    const handleSubmit = async (event) => {
        event.preventDefault();
        const errorElement = document.getElementById('error');
        const captchaResponse = window.grecaptcha.getResponse();

        if (!captchaResponse) {
            errorElement.textContent = 'Vui lòng xác nhận bạn không phải là robot.';
            return;
        }

        try {
            const res = await fetch('/api/dangnhap', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: `user=${encodeURIComponent(email)}&pass=${encodeURIComponent(password)}`,
            });

            const data = await res.json();
            if (data.status === 'success') {
                // Đăng nhập thành công, ví dụ: lưu trạng thái và redirect
                localStorage.setItem('isLoggedIn', 'true');
                window.location.href = '/'; // Chuyển hướng về trang chủ
            } else {
                setError(data.error || 'Đăng nhập thất bại');
            }
        } catch (err) {
            setError('Có lỗi xảy ra, vui lòng thử lại.');
        }
    };

    useEffect(() => {
        const script = document.createElement('script');
        script.src = 'https://www.google.com/recaptcha/api.js?hl=vi';
        script.async = true;
        script.defer = true;
        document.body.appendChild(script);

        const query = new URLSearchParams(window.location.search);
        const errorMessage = query.get('error');
        if (errorMessage) setError(decodeURIComponent(errorMessage));

        return () => {
            document.body.removeChild(script);
        };
    }, []);

    return (
        <div className="modal">
            <div className="modal_overlay">
                <div className="modal_body">
                    <div className="modal_inner">
                        <form onSubmit={handleSubmit} id="login-form">
                            <div className="login-register_container">
                                <img src={bgImg} className="background-login_img" alt="Background" />
                                <div className="login-form_container" id="login-container">
                                    <div className="login-form">
                                        <div className="login-form_header">
                                            <span className="login-form_heading">Đăng nhập</span>
                                        </div>
                                        {error && <div className="text-danger" style={{ fontSize: '1.5rem', color: 'red', marginBottom: '-23px' }}>{error}</div>}
                                        <div className="login-form_input">
                                            <div className="login-form_group">
                                                <input
                                                    type="email"
                                                    className="login-form_input"
                                                    placeholder="Nhập email"
                                                    autoFocus
                                                    required
                                                    value={email}
                                                    onChange={(e) => setEmail(e.target.value)}
                                                />
                                            </div>
                                            <div className="login-form_group">
                                                <input
                                                    type="password"
                                                    className="login-form_input"
                                                    placeholder="Nhập mật khẩu"
                                                    required
                                                    value={password}
                                                    onChange={(e) => setPassword(e.target.value)}
                                                />
                                            </div>
                                            <div className="login-form_group">
                                                <div className="g-recaptcha" data-sitekey="6LdI1_kpAAAAADLADtDo_VPbEsRl6lpd_j-ZKhoV"></div>
                                                <div id="error" style={{ color: 'red', fontSize: '1.2rem' }}></div>
                                            </div>
                                            <div className="login-form_control">
                                                <button className="login-btn" type="submit">ĐĂNG NHẬP</button>
                                            </div>
                                            <div className="forget-change-password">
                                                <label className="forget-password_label">
                                                    <a href="#" className="forget-password_label">Quên mật khẩu</a>
                                                </label>
                                            </div>
                                            <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid&redirect_uri=https://localhost:8443/login&response_type=code&client_id=224511662176-ekl8bu51fgqtp04m9dqnegm5ah8d6qjo.apps.googleusercontent.com&approval_prompt=force" className="google-login">
                                                <div className="register">
                                                    <h3 className="google-text">Đăng nhập với Google</h3>
                                                    <a href="" className="register-switch">
                                                        <i style={{ marginLeft: '7px' }} className="fa-brands fa-google"></i>
                                                    </a>
                                                </div>
                                            </a>
                                            <div className="register">
                                                <h3>Bạn mới biết đến KFP?</h3>
                                                <a href="#" className="register-switch" style={{ marginTop: '17px', marginLeft: '7px' }}>Đăng ký</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Login;