package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Table(name = "khachhang")
public class KhachHang {
    @Id
    @Column(name = "maKH")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer maKH;

    @Column(name = "tenKH")
    private String tenKH;

    @Column(name = "email")
    private String email;

    @Column(name = "matkhau")
    private String matKhau;

    @Column(name = "soDT")
    private Integer soDT;

    @Column(name = "gioiTinh")
    private String gioiTinh;

    @Column(name = "ngaySinh")
    private LocalDate ngaySinh = LocalDate.of(2000, 1, 1);

    @Column(name = "diaChi")
    private String diaChi;

    @ManyToOne
    @JoinColumn(name = "maTC", referencedColumnName = "maTC")
    private TruyCap truyCap;

    @Column(name = "code")
    private String code;

    @Column(name = "picture")
    private String picture;

    @OneToMany(mappedBy = "khachHang", fetch = FetchType.LAZY)
    private List<DonHang> donHangs;
}
