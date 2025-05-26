package com.CDWeb.chickenShop.entities;

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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "nguyenlieu")
    private String nguyenlieu;

    @Column(name = "soluong")
    private Integer soluong;

    @Column(name = "noidung")
    private String noidung;

    @Column(name = "loai")
    private String loai;

    @Column(name = "thoigian")
    private LocalDateTime thoigian;

    @Column(name = "donvi")
    private String donvi;

    @Column(name = "gia")
    private Double gia;

    @Column(name = "tong")
    private Double tong;
}
