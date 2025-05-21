package com.CDWeb.chickenShop.entity;

import com.CDWeb.chickenShop.enums.LogLevels;
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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Enumerated(EnumType.STRING)
    @Column(name = "level")
    private LogLevels logLevels;

    @Column(name = "ip")
    private String ip;

    @Column(name = "address")
    private String address;

    @Column(name = "beforeValue")
    private String beforeValue;

    @Column(name = "afterValue")
    private String afterValue;

    @Column(name = "createAt")
    private LocalDateTime createAt;

}