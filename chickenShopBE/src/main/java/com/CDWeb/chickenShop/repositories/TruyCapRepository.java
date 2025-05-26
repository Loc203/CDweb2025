package com.CDWeb.chickenShop.repositories;

import com.CDWeb.chickenShop.entities.TruyCap;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TruyCapRepository extends JpaRepository<TruyCap, Long> {
}
