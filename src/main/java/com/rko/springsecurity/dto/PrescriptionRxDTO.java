package com.rko.springsecurity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PrescriptionRxDTO {
    private Long id;
    private String locationName;
    private Double latitude;
    private Double longitude;
}
