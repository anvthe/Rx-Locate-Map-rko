package com.rko.springsecurity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AreaDTO {

        private Long districtId;

        private String divisionName;

        private String districtName;

        private String drugName;

        private long prescriptionCount;

        private double lat;

        private double lng;
    }
