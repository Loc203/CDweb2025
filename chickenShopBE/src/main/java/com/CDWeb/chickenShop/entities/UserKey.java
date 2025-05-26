package com.CDWeb.chickenShop.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Table(name = "userkey")
public class UserKey {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "maKH")
    private KhachHang khachHang;

    @Column(name = "publickey")
    private String publicKey;

    @Column(name = "createAt")
    private Timestamp createAt;

    @Column(name = "isActive")
    private Integer isActive;
}