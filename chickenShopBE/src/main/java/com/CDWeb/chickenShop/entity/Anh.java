package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "anh")
public class Anh implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "maAnh")
    private int maAnh;

    @Column(name = "maSP")
    private Integer maSP;

    @Column(name = "duongDan")
    private String duongDan;

    @Column(name = "chuThich")
    private String chuThich;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "maSP", referencedColumnName = "maSP", insertable = false, updatable = false)
    private SanPham sanPham;
}