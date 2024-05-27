package com.rko.springsecurity.dto;

import com.rko.springsecurity.domain.Location;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DivisionDTO {

    private String divisionName;

    private long prescriptionCount;

    private double lat;

    private double lng;



}
