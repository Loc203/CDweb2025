import React from 'react';
import Breadcrumb from '../components/Breadcrumb';

const stores = [
  {
    name: 'KFP Gà Rán - Chi nhánh Quận 1',
    address: '150/8 Nguyễn Duy Cung, Phường 12, Quận 1, TP.HCM',
    phone: '19006750',
    hours: '8h00 - 20h00'
  },
  {
    name: 'KFP Gà Rán - Chi nhánh Quận 3',
    address: '25 Lý Chính Thắng, Phường 8, Quận 3, TP.HCM',
    phone: '19006751',
    hours: '8h00 - 20h00'
  },
  {
    name: 'KFP Gà Rán - Chi nhánh Bình Thạnh',
    address: '200 Điện Biên Phủ, Phường 15, Bình Thạnh, TP.HCM',
    phone: '19006752',
    hours: '8h00 - 20h00'
  }
];

const StoreSystemPage = () => {
  return (
      <div>
        <Breadcrumb page="Hệ thống cửa hàng" />
        <section className="page section">
          <div className="container card py-2">
            <div className="wrap_background_aside margin-bottom-40">
              <div className="row">
                <div className="col-xs-12 col-sm-12 col-md-12">
                  <div className="heading-bar">
                    <h1 className="title_page">
                      <span role="img" aria-label="store">🏬</span> Hệ thống cửa hàng KFP Gà Rán
                    </h1>
                  </div>
                  <div className="content-page rte py-3" style={{fontSize: '1.1em'}}>
                    {stores.map((store, idx) => (
                        <div key={idx} style={{marginBottom: 24, borderBottom: '1px solid #eee', paddingBottom: 16}}>
                          <h4><span role="img" aria-label="location">📍</span> {store.name}</h4>
                          <p><span role="img" aria-label="address">🏠</span> Địa chỉ: {store.address}</p>
                          <p><span role="img" aria-label="phone">📞</span> Hotline: <a href={`tel:${store.phone}`}>{store.phone}</a></p>
                          <p><span role="img" aria-label="clock">⏰</span> Giờ mở cửa: {store.hours}</p>
                        </div>
                    ))}
                    <p><b>KFP Gà Rán</b> luôn sẵn sàng phục vụ bạn tại tất cả các chi nhánh trên toàn quốc! <span role="img" aria-label="chicken">🍗</span></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
  );
};

export default StoreSystemPage;