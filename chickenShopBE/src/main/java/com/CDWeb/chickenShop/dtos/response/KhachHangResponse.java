package com.CDWeb.chickenShop.dtos.response;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class KhachHangResponse {
    String tenKH;
    String email;
    String matKhau;
    Integer soDT;
    String gioiTinh;
    LocalDate ngaySinh;
    String diaChi;
    int maTC;
    String code;
    String picture;
    int alertKey;
    TruyCapResponse truyCap;
}
