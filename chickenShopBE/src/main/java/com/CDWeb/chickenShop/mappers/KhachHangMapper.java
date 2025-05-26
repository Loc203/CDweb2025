package com.CDWeb.chickenShop.mappers;

import com.CDWeb.chickenShop.dtos.response.KhachHangResponse;
import com.CDWeb.chickenShop.entities.KhachHang;
import com.CDWeb.chickenShop.repositories.KhachHangRepository;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface KhachHangMapper {
    KhachHangResponse toResponse(KhachHang khachHang);
}
