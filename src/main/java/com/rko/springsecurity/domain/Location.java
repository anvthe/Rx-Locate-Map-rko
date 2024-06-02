package com.rko.springsecurity.domain;

import jakarta.persistence.*;
import lombok.*;

import java.util.Set;

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

    @ManyToOne
    @JoinColumn(name = "division_id")
    private Division division;

    @OneToMany(mappedBy = "location")
    private Set<Prescription> prescriptions;

}