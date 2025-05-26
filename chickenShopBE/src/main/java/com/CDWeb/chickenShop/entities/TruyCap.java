package com.CDWeb.chickenShop.entities;

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
@Table(name = "truycap")
public class TruyCap {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "maTC")
    private Long maTC;

    @Column(name = "tinhTrang")
    private String tinhTrang;

    @OneToMany(mappedBy = "truyCap", fetch = FetchType.LAZY)
    private List<KhachHang> khachHangs;
}