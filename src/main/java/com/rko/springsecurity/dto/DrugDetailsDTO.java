package com.rko.springsecurity.dto;

import com.rko.springsecurity.domain.Drug;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DrugDetailsDTO {

    private String name;

    private String formula;

    private String strength;


    public static DrugDetailsDTO from(Drug drug) {

        DrugDetailsDTO detailsDTO = new DrugDetailsDTO();
        detailsDTO.name = drug.getName();
        detailsDTO.formula = drug.getFormula();
        detailsDTO.strength = drug.getStrength();
        return detailsDTO;
    }
}
