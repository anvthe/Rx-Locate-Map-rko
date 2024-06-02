package com.rko.springsecurity.dto;

import com.rko.springsecurity.domain.Prescription;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.stream.Collectors;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PrescriptionDTO {

    private Long id;

    private DoctorDTO doctor;

    private PatientDTO patient;

    private List<DrugDTO> drugs;

    public static PrescriptionDTO from(Prescription prescription) {
        if (prescription == null) {
            return null;
        }

        DoctorDTO doctorDTO = null;
        if (prescription.getDoctor() != null) {
            doctorDTO = new DoctorDTO(
                    prescription.getDoctor().getName(),
                    prescription.getDoctor().getBmdcNo()
            );
        }

        PatientDTO patientDTO = null;
        if (prescription.getPatient() != null) {
            patientDTO = new PatientDTO(
                    prescription.getPatient().getName(),
                    prescription.getPatient().getAge()
            );
        }

        List<DrugDTO> drugDTOs = prescription.getDrugs().stream()
                .map(drug -> new DrugDTO(drug.getName(), drug.getFormula(), drug.getStrength()))
                .collect(Collectors.toList());

        return new PrescriptionDTO(
                prescription.getId(),
                doctorDTO,
                patientDTO,
                drugDTOs
        );

    }
}

