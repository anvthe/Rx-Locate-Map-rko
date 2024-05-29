package com.rko.springsecurity.dto;

import jakarta.persistence.Lob;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FileDto {
    private String divisionName;

    private List<String> districts;

    private long prescriptionCount;

    private Map<String, Integer> districtToPrescriptionCount = new HashMap<>();
}
