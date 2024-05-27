package com.rko.springsecurity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AreaDTO {

        private String locationName;

        private long prescriptionCount;

        private double lat;

        private double lng;
    }
