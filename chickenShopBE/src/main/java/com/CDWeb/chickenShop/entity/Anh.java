package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "anh")
public class Anh {
    @Id
    @Column(name = "maAnh")
    private Integer maAnh;

    @Column(name = "duongDan")
    private String duongDan;

    @Column(name = "chuThich")
    private String chuThich;

    @ManyToOne
    @JoinColumn(name = "maSP", referencedColumnName = "maSP")
    private SanPham sanPham;
}