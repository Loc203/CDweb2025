package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Table(name = "theloai")
public class TheLoai {
    @Id
    @Column(name = "maTL")
    private Integer maTL;

    @Column(name = "tenTL")
    private String tenTL;

    @OneToMany(mappedBy = "theLoai", fetch = FetchType.LAZY)
    private List<SanPham> sanPhams;
}