package com.rko.springsecurity.dto;

import com.rko.springsecurity.domain.Division;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DivisionAreaDTO {

    private String divisionName;

    private double lat;

    private double lng;

    public static DivisionAreaDTO from(Division division) {
        DivisionAreaDTO dto = new DivisionAreaDTO();
        dto.setDivisionName(division.getName());
        dto.setLat(division.getLat());
        dto.setLng(division.getLng());

        return dto;
    }
}
