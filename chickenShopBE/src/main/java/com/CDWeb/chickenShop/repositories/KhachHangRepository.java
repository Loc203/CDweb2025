package com.CDWeb.chickenShop.repositories;

import com.CDWeb.chickenShop.entities.KhachHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface KhachHangRepository extends JpaRepository<KhachHang, Long> {
}
