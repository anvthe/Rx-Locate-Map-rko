package com.rko.springsecurity.enums;

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
