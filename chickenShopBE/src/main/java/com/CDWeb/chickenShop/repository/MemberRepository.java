package com.CDWeb.chickenShop.repository;


import com.CDWeb.chickenShop.entity.Member;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MemberRepository extends JpaRepository<Member, String> {
    boolean existsByEmail(String email);
}