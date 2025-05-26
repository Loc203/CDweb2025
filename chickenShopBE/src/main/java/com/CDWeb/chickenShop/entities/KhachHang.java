package com.CDWeb.chickenShop.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Table(name = "khachhang")
public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "maKH")
    private Long maKH;

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
    private LocalDate ngaySinh;

    @Column(name = "diaChi")
    private String diaChi;

    @Column(name = "maTC")
    private int maTC = 0;

    @Column(name = "code")
    private String code;

    @Column(name = "picture")
    private String picture;

    @Column(name = "alertKey")
    private int alertKey;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maTC", referencedColumnName = "maTC", insertable = false, updatable = false)
    private TruyCap truyCap;

}
