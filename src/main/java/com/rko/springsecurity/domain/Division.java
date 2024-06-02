package com.rko.springsecurity.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "divisions")
public class Division {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private double lat;

    private double lng;

    @OneToMany(mappedBy = "division")
    private List<Location> locations;

}











































/*
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@Getter
@AllArgsConstructor
public enum Division {
    DHAKA("Dhaka"),
    CHITTAGONG("Chittagong"),
    KHULNA("Khulna"),
    BARISHAL("Barishal"),
    RAJSHAHI("Rajshahi "),
    RANGPUR("Rangpur"),
    MYMENSINGH("Mymensingh"),
    SYLHET("Sylhet");


    private final String label;

    public static Division findByLabel(String label) {
        return Arrays.stream(values())
                .filter(division -> division.getLabel().equalsIgnoreCase(label.trim()))
                .findFirst()
                .orElse(null);
    }
}
*/
