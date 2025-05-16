package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
@Table(name = "sanpham")
public class SanPham {
    @Id
    @Column(name = "maSP")
    private Integer maSP;

    @Column(name = "tenSP")
    private String tenSP;

    @Column(name = "giaGoc")
    private Double giaGoc;

    @Column(name = "giaGiam")
    private Double giaGiam;

    @Column(name = "soLuongTonKho")
    private Integer soLuongTonKho;

    @Column(name = "moTa")
    private String moTa;

    @ManyToOne
    @JoinColumn(name = "maTL", referencedColumnName = "maTL")
    private TheLoai theLoai;

    @ManyToOne
    @JoinColumn(name = "maAnh", referencedColumnName = "maAnh")
    private Anh anh;

    @OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
    private List<ChiTietDonHang> chiTietDonHangs;

    @OneToMany(mappedBy = "sanPham", fetch = FetchType.LAZY)
    private List<Anh> anhs;
}