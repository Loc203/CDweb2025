import React from 'react';
import Breadcrumb from '../components/Breadcrumb';

const DeliveryPolicyPage = () => {
  return (
      <div>
        <Breadcrumb page="Chính sách giao hàng" />
        <section className="page section">
          <div className="container card py-2">
            <div className="wrap_background_aside margin-bottom-40">
              <div className="row">
                <div className="col-xs-12 col-sm-12 col-md-12">
                  <div className="heading-bar">
                    <h1 className="title_page">
                      <span role="img" aria-label="delivery">🚚</span> Chính sách giao hàng
                    </h1>
                  </div>
                  <div className="content-page rte py-3">
                    <ul style={{fontSize: '1.1em'}}>
                      <li><span role="img" aria-label="map">🗺️</span> Giao hàng trong bán kính tối đa 10km.</li>
                      <li><span role="img" aria-label="clock">⏰</span> Thời gian giao hàng dự kiến: 30-45 phút kể từ khi xác nhận đơn.</li>
                      <li><span role="img" aria-label="check">✅</span> Khách hàng kiểm tra sản phẩm trước khi nhận hàng.</li>
                      <li><span role="img" aria-label="app">📱</span> Hỗ trợ giao hàng qua các ứng dụng đối tác nếu khách có nhu cầu.</li>
                    </ul>
                    <p>Mọi thắc mắc về giao hàng, vui lòng liên hệ hotline: <b>19006750</b> <span role="img" aria-label="hotline">☎️</span></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
  );
};

export default DeliveryPolicyPage;