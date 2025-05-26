package com.CDWeb.chickenShop.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
@Table(name = "sanpham")
public class SanPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "maSP")
    private int maSP;

    @Column(name = "tenSP", length = 50)
    private String tenSP;

    @Column(name = "giaGoc")
    private Double giaGoc;

    @Column(name = "giaGiam")
    private Double giaGiam;

    @Column(name = "soLuongTonKho")
    private Integer soLuongTonKho;

    @Column(name = "moTa", length = 100)
    private String moTa;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maTL", referencedColumnName = "maTL")
    private TheLoai theLoai;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maAnh", referencedColumnName = "maAnh")
    private Anh anh;
}