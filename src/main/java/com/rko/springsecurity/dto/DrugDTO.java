package com.rko.springsecurity.dto;

import com.rko.springsecurity.domain.Drug;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DrugDTO {

    private String name;



    public static DrugDTO from(Drug drug) {

        DrugDTO drugDTO = new DrugDTO();
        drugDTO.name = drug.getName();
        return drugDTO;
    }

}
