package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Table(name = "chitiet_donhang")
public class ChiTietDonHang {
    @Id
    @ManyToOne
    @JoinColumn(name = "maDH", referencedColumnName = "maDH")
    private DonHang donHang;

    @Id
    @ManyToOne
    @JoinColumn(name = "maSP", referencedColumnName = "maSP")
    private SanPham sanPham;

    @Column(name = "soLuongDatHang")
    private Integer soLuongDatHang;

    @Column(name = "thueVAT", nullable = false)
    private Double thueVAT = 0.1;

    @Column(name = "tongTien", nullable = false)
    private Double tongTien;
}