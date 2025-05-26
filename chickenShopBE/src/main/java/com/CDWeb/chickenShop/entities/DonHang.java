package com.CDWeb.chickenShop.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Table(name = "donhang")
public class DonHang {
    @Id
    @Column(name = "maDH")
    private int maDH;

    @Column(name = "maKH")
    private Integer maKH;

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

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maKH", referencedColumnName = "maKH", insertable = false, updatable = false)
    private KhachHang khachHang;

}