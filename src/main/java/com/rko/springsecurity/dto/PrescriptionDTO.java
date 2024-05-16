package com.rko.springsecurity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PrescriptionDTO {
    private DoctorDTO doctor;
    private PatientDTO patient;
    private LocationDTO location;
    private List<DrugDTO> drugs;
}