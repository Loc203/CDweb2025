package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
@Table(name = "nguyenlieu")
public class NguyenLieu {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "nguyenlieu")
    private String nguyenLieu;

    @Column(name = "soluong")
    private Integer soLuong;

    @Column(name = "noidung")
    private String noiDung;

    @Column(name = "loai")
    private String loai;

    @Column(name = "thoigian")
    private LocalDateTime thoiGian;

    @Column(name = "donvi")
    private String donVi;

    @Column(name = "gia")
    private Double gia;

    @Column(name = "tong")
    private Double tong;
}
