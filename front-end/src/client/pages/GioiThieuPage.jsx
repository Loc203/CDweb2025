import React from 'react';
import Breadcrumb from '../components/Breadcrumb';

const GioiThieuPage = () => {
  return (
      <div>
        <Breadcrumb page="Giới thiệu" />
        <section className="page section">
          <div className="container card py-2">
            <div className="wrap_background_aside margin-bottom-40">
              <div className="row">
                <div className="col-xs-12 col-sm-12 col-md-12">
                  <div className="heading-bar">
                    <h1 className="title_page">
                      <span role="img" aria-label="chicken">🍗</span> Giới thiệu về KFP Gà Rán
                    </h1>
                  </div>
                  <div className="content-page rte py-3" style={{fontSize: '1.1em'}}>
                    <p><b>KFP Gà Rán</b> tự hào là thương hiệu gà rán Việt Nam mang đến cho khách hàng những trải nghiệm ẩm thực tuyệt vời nhất với các món gà rán giòn tan, đậm đà hương vị. <span role="img" aria-label="star">⭐</span></p>
                    <h3>Lịch sử hình thành <span role="img" aria-label="history">📜</span></h3>
                    <p>KFP Gà Rán được thành lập từ năm 2015 với khát vọng xây dựng một thương hiệu gà rán chất lượng cao, phục vụ người Việt bằng chính sự tận tâm và sáng tạo của người Việt. Trải qua nhiều năm phát triển, KFP đã trở thành điểm đến quen thuộc của các gia đình, bạn trẻ và dân văn phòng trên khắp cả nước.</p>
                    <h3>Sứ mệnh & Giá trị cốt lõi <span role="img" aria-label="target">🎯</span></h3>
                    <ul>
                      <li>Luôn đặt chất lượng và an toàn thực phẩm lên hàng đầu.</li>
                      <li>Không ngừng sáng tạo để mang đến thực đơn đa dạng, phù hợp khẩu vị người Việt.</li>
                      <li>Phục vụ tận tâm, thân thiện, chuyên nghiệp.</li>
                      <li>Giá cả hợp lý, nhiều ưu đãi hấp dẫn cho khách hàng thân thiết.</li>
                    </ul>
                    <h3>Sản phẩm & Dịch vụ <span role="img" aria-label="menu">📋</span></h3>
                    <ul>
                      <li>Gà rán truyền thống, gà rán cay, gà không xương, gà sốt đặc biệt.</li>
                      <li>Combo tiết kiệm cho cá nhân, nhóm bạn, gia đình.</li>
                      <li>Khoai tây chiên, salad, nước ngọt và nhiều món ăn kèm hấp dẫn.</li>
                      <li>Phục vụ tại chỗ, mang về và giao hàng tận nơi nhanh chóng.</li>
                    </ul>
                    <h3>Cam kết của KFP <span role="img" aria-label="handshake">🤝</span></h3>
                    <ul>
                      <li>Nguyên liệu tươi ngon, nguồn gốc rõ ràng.</li>
                      <li>Chế biến sạch sẽ, đảm bảo vệ sinh an toàn thực phẩm.</li>
                      <li>Luôn lắng nghe và cải tiến dịch vụ dựa trên ý kiến khách hàng.</li>
                    </ul>
                    <h3>Phong cách phục vụ <span role="img" aria-label="smile">😊</span></h3>
                    <p>Đội ngũ nhân viên KFP luôn thân thiện, nhiệt tình, sẵn sàng phục vụ và hỗ trợ khách hàng mọi lúc, mọi nơi. Chúng tôi mong muốn mỗi bữa ăn tại KFP không chỉ ngon miệng mà còn là trải nghiệm vui vẻ, ấm áp.</p>
                    <h3>Lời mời từ KFP <span role="img" aria-label="megaphone">📣</span></h3>
                    <p>KFP Gà Rán xin gửi lời cảm ơn chân thành đến quý khách hàng đã tin tưởng và ủng hộ. Hãy đến với KFP để thưởng thức những món gà rán tuyệt hảo và cảm nhận sự khác biệt! <span role="img" aria-label="chicken">🍗</span> <span role="img" aria-label="heart">❤️</span></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
  );
};

export default GioiThieuPage;