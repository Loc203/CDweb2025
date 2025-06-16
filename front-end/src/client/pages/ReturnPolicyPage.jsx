import React from 'react';
import Breadcrumb from '../components/Breadcrumb';

const ReturnPolicyPage = () => {
  return (
      <div>
        <Breadcrumb page="Chính sách đổi trả" />
        <section className="page section">
          <div className="container card py-2">
            <div className="wrap_background_aside margin-bottom-40">
              <div className="row">
                <div className="col-xs-12 col-sm-12 col-md-12">
                  <div className="heading-bar">
                    <h1 className="title_page">
                      <span role="img" aria-label="return">🔄</span> Chính sách đổi trả
                    </h1>
                  </div>
                  <div className="content-page rte py-3">
                    <ul style={{fontSize: '1.1em'}}>
                      <li><span role="img" aria-label="timer">⏳</span> Chỉ nhận đổi trả sản phẩm trong vòng 2 giờ kể từ khi nhận hàng.</li>
                      <li><span role="img" aria-label="package">📦</span> Sản phẩm đổi trả phải còn nguyên vẹn, chưa sử dụng và giữ hóa đơn mua hàng.</li>
                      <li><span role="img" aria-label="alert">⚠️</span> Chúng tôi chỉ giải quyết đổi trả với các trường hợp: giao nhầm, thiếu sản phẩm, sản phẩm bị hỏng, không đúng mô tả.</li>
                      <li><span role="img" aria-label="phone">📞</span> Khách hàng vui lòng liên hệ hotline <b>19006750</b> để được hỗ trợ nhanh nhất.</li>
                    </ul>
                    <p>Chúng tôi luôn mong muốn mang lại trải nghiệm tốt nhất cho khách hàng! <span role="img" aria-label="heart">❤️</span></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
  );
};

export default ReturnPolicyPage;