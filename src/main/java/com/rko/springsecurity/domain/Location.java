package com.rko.springsecurity.domain;

import jakarta.persistence.*;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "locations")
public class Location {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "location_name", unique = true)
    private String name;

    @Column(name = "latitude")
    private double lat;

    @Column(name = "longitude")
    private double lng;


}