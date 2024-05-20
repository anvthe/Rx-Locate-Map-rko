package com.rko.springsecurity.dto;




import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class SearchResultDTO {
    private int prescriptionCount;
    private String drugName;
    private String locationName;
    private double locationLat;
    private double locationLng;

}
