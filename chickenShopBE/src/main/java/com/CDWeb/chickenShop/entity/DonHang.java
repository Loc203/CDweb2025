package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Table(name = "donhang")
public class DonHang {
    @Id
    @Column(name = "maDH")
    private Integer maDH;

    @ManyToOne
    @JoinColumn(name = "maKH", referencedColumnName = "maKH")
    private KhachHang khachHang;

    @Column(name = "diaChiNhanHang")
    private String diaChiNhanHang;

    @Column(name = "soDienThoai")
    private String soDienThoai;

    @Column(name = "ngayDatHang")
    private LocalDateTime ngayDatHang;

    @Column(name = "ngayNhanHang")
    private LocalDateTime ngayNhanHang;

    @Column(name = "trangThai")
    private String trangThai = "Chưa giao";

    @Column(name = "thanhToan")
    private String thanhToan;

    @Column(name = "phiVanChuyen")
    private Double phiVanChuyen;

    @Column(name = "signature", columnDefinition = "TEXT")
    private String signature;

    @OneToMany(mappedBy = "donHang", fetch = FetchType.LAZY)
    private List<ChiTietDonHang> chiTietDonHangs;
}