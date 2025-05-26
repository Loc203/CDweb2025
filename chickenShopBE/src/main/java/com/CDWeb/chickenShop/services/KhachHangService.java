package com.CDWeb.chickenShop.services;

import com.CDWeb.chickenShop.dtos.response.KhachHangResponse;
import com.CDWeb.chickenShop.entities.KhachHang;
import com.CDWeb.chickenShop.mappers.KhachHangMapper;
import com.CDWeb.chickenShop.repositories.KhachHangRepository;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class KhachHangService {
    KhachHangRepository khachHangRepository;
    KhachHangMapper khachHangMapper;
    public List<KhachHangResponse> getAllUser(){
        return khachHangRepository.findAll().stream().map(khachHangMapper::toResponse).toList();
    }

}
