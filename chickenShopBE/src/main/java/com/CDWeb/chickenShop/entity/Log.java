package com.CDWeb.chickenShop.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Table(name = "log")
public class Log {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "level")
    private String level = "0";

    @Column(name = "ip")
    private String ip = "0";

    @Column(name = "address")
    private String address = "0";

    @Column(name = "beforeValue", columnDefinition = "TEXT")
    private String beforeValue;

    @Column(name = "afterValue", columnDefinition = "TEXT")
    private String afterValue;

    @Column(name = "createAt")
    private LocalDateTime createAt;
}