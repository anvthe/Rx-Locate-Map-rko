package com.rko.springsecurity.dto;

import com.rko.springsecurity.domain.Division;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DivisionDTO {

    private String divisionName;

    private String drugName;

    private long prescriptionCount;

    private double lat;

    private double lng;

    public static DivisionDTO from(Division division) {

        DivisionDTO div = new DivisionDTO();
        div.divisionName = div.getDivisionName();
        div.lat = division.getLat();
        div.lng = division.getLng();
        return div;
    }


}
