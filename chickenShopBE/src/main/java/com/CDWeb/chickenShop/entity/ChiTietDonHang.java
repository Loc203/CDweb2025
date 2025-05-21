package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Table(name = "chitiet_donhang")
public class ChiTietDonHang {
    @Id
    @Column(name = "maDH")
    private int maDH;

    @Id
    @Column(name = "maSP")
    private int maSP;

    @Column(name = "soLuongDatHang")
    private Integer soLuongDatHang;

    @Column(name = "thueVAT", nullable = false)
    private double thueVAT = 0.1;

    @Column(name = "tongTien", nullable = false)
    private double tongTien;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maDH", referencedColumnName = "maDH", insertable = false, updatable = false)
    private DonHang donHang;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maSP", referencedColumnName = "maSP", insertable = false, updatable = false)
    private SanPham sanPham;
}