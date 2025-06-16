import React from 'react';
import Breadcrumb from '../components/Breadcrumb';

const SalesPolicyPage = () => {
  return (
      <div>
        <Breadcrumb page="Chính sách bán hàng" />
        <section className="page section">
          <div className="container card py-2">
            <div className="wrap_background_aside margin-bottom-40">
              <div className="row">
                <div className="col-xs-12 col-sm-12 col-md-12">
                  <div className="heading-bar">
                    <h1 className="title_page">
                      <span role="img" aria-label="shop">🏪</span> Chính sách bán hàng
                    </h1>
                  </div>
                  <div className="content-page rte py-3">
                    <ul style={{fontSize: '1.1em'}}>
                      <li><span role="img" aria-label="clock">⏰</span> Chỉ nhận đơn hàng trong giờ hoạt động: 8h00 - 20h00 mỗi ngày.</li>
                      <li><span role="img" aria-label="order">📝</span> Khách hàng có thể đặt hàng trực tiếp tại quán, qua website hoặc hotline.</li>
                      <li><span role="img" aria-label="check">✅</span> Chúng tôi cam kết phục vụ đúng sản phẩm, đúng combo như đã đặt.</li>
                    </ul>
                    <p>Mọi thắc mắc về đơn hàng, vui lòng liên hệ hotline: <b>19006750</b> <span role="img" aria-label="hotline">☎️</span></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
  );
};

export default SalesPolicyPage;