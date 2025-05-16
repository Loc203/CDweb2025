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
@Table(name = "truycap")
public class TruyCap {
    @Id
    @Column(name = "maTC")
    private Integer maTC;

    @Column(name = "tinhTrang")
    private String tinhTrang = "Chưa xác thực";

    @OneToMany(mappedBy = "truyCap", fetch = FetchType.LAZY)
    private List<KhachHang> khachHangs;
}