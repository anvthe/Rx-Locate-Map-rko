package com.rko.springsecurity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DrugDetailsDTO {

    private String drugName;

    private String drugFormation;

    private String drugStrength;

    private String generic;

    private String vendor;




/*    public static DrugDetailsDTO from(DrugDetailsDTO drug) {

        DrugDetailsDTO detailsDTO = new DrugDetailsDTO();
        detailsDTO.name = drug.getName();
        detailsDTO.drugFormation = drug.getDrugFormation();
        detailsDTO.drugStrength = drug.getDrugStrength();
        detailsDTO.generic = drug.getGeneric();
        detailsDTO.vendor = drug.getVendor();
        return detailsDTO;
    }*/
}
