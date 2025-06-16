import React from 'react';
import Breadcrumb from '../components/Breadcrumb';

const OrderByPhonePage = () => {
  return (
      <div>
        <Breadcrumb page="Gọi điện đặt hàng" />
        <section className="page section">
          <div className="container card py-2">
            <div className="wrap_background_aside margin-bottom-40">
              <div className="row">
                <div className="col-xs-12 col-sm-12 col-md-12">
                  <div className="heading-bar">
                    <h1 className="title_page">
                      <span role="img" aria-label="phone">📞</span> Gọi điện đặt hàng KFP Gà Rán
                    </h1>
                  </div>
                  <div className="content-page rte py-3" style={{fontSize: '1.1em'}}>
                    <p><span role="img" aria-label="hand">👉</span> Để đặt hàng nhanh chóng, bạn chỉ cần gọi đến hotline của KFP Gà Rán:</p>
                    <h2 style={{color: '#e67e22'}}><span role="img" aria-label="hotline">☎️</span> <a href="tel:19006750">19006750</a></h2>
                    <ul>
                      <li><span role="img" aria-label="clock">⏰</span> Thời gian nhận cuộc gọi: 8h00 - 20h00 mỗi ngày.</li>
                      <li><span role="img" aria-label="note">📝</span> Chuẩn bị sẵn địa chỉ nhận hàng, món ăn và combo bạn muốn đặt.</li>
                      <li><span role="img" aria-label="money">💵</span> Thanh toán khi nhận hàng hoặc chuyển khoản.</li>
                      <li><span role="img" aria-label="smile">😊</span> Nhân viên KFP sẽ xác nhận đơn và giao hàng tận nơi cho bạn.</li>
                    </ul>
                    <p><b>KFP Gà Rán</b> luôn sẵn sàng phục vụ bạn mọi lúc, mọi nơi! <span role="img" aria-label="chicken">🍗</span></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
  );
};

export default OrderByPhonePage;