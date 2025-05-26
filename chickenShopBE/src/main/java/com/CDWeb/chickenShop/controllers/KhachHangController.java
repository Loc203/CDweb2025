package com.CDWeb.chickenShop.controllers;

import com.CDWeb.chickenShop.dtos.response.KhachHangResponse;
import com.CDWeb.chickenShop.entities.KhachHang;
import com.CDWeb.chickenShop.mappers.KhachHangMapper;
import com.CDWeb.chickenShop.services.KhachHangService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
@RequestMapping("/users")
public class KhachHangController {
    KhachHangService khachHangService;

    @GetMapping
    public List<KhachHangResponse> getAllUser(){
        return khachHangService.getAllUser();
    }
}
