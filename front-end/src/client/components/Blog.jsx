import React from 'react'

const Blog = () => {
    return (
        <div>
            <div className='product-related-blog'>
                <h2 className='heading-bar__title justify-content-center'
                    style={{ backgroundColor: '#a50a06', color: '#ffffff' }}>
                    BÀI VIẾT LIÊN QUAN
                </h2>

                <div className="product-related-blog__items card border-0"><div className="blogwp clearfix">
                    <a className="image-blog card-img-top text-center position-relative d-flex align-items-center justify-content-center aspect-ratio" title="CHƯƠNG TRÌNH CRUNCHY NIGHT" style={{ width: '360px', height: '192px' }}>
                        <img className="img-fluid m-auto mh-100 w-auto" src="https://texaschickenvn.com/vnt_upload/news/12_2022/317718093_2724446671020264_8496907873597464248_n_1.jpg" alt="CHƯƠNG TRÌNH CRUNCHY NIGHT" />
                    </a>
                    <div className="content_blog clearfix card-body px-0 py-2">
                        <h3>
                            <a className="link" title="CHƯƠNG TRÌNH CRUNCHY NIGHT">CHƯƠNG TRÌNH CRUNCHY NIGHT</a>
                        </h3>
                    </div>
                </div>
                    <div className="blogwp clearfix">
                        <a className="image-blog card-img-top text-center position-relative d-flex align-items-center justify-content-center aspect-ratio " title="Jollibee đạt mốc 200 cửa hàng tại thị trường Việt Nam" style={{ width: '360px', height: '192px' }}>
                            <img className="img-fluid m-auto mh-100 w-auto" src="https://jollibee.com.vn/media/magefan_blog/TT1_1.jpg" alt="Jollibee đạt mốc 200 cửa hàng tại thị trường Việt Nam" />
                        </a>
                        <div className="content_blog clearfix card-body px-0 py-2">
                            <h3>
                                <a className="link" title="Jollibee đạt mốc 200 cửa hàng tại thị trường Việt Nam">JOLLIBEE ĐẠT MỐC 200 CỬA HÀNG TẠI VIỆT NAM</a>
                            </h3>
                        </div>
                    </div>
                    <div className="blogwp clearfix">
                        <a className="image-blog card-img-top text-center position-relative  d-flex align-items-center justify-content-centeraspect-ratio " title="CẬP NHẬT DANH SÁCH NHÀ HÀNG TẠI KHU VỰC THÀNH PHỐ HỒ CHÍ MINH" style={{ width: '360px', height: '192px' }}>
                            <img className="img-fluid m-auto mh-100 w-auto" src="https://texaschickenvn.com/vnt_upload/news/09_2023/TXC_KTCT.jpg" alt="CẬP NHẬT DANH SÁCH NHÀ HÀNG TẠI KHU VỰC THÀNH PHỐ HỒ CHÍ MINH" />
                        </a>
                        <div className="content_blog clearfix card-body px-0 py-2">
                            <h3>
                                <a className="link" title="CẬP NHẬT DANH SÁCH NHÀ HÀNG TẠI KHU VỰC THÀNH PHỐ HỒ CHÍ MINH">CẬP NHẬT DANH SÁCH NHÀ HÀNG TẠI KHU VỰC THÀNH PHỐ HỒ CHÍ MINH</a>
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Blog