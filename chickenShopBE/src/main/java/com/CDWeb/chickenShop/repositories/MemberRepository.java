package com.CDWeb.chickenShop.repositories;


import com.CDWeb.chickenShop.entities.Member;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MemberRepository extends JpaRepository<Member, String> {
    boolean existsByEmail(String email);
}