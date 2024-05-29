package com.rko.springsecurity.dto;

import com.rko.springsecurity.domain.Doctor;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.http.ResponseEntity;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DoctorDTO {

    private String name;

    private String bmdcNo;

    public static DoctorDTO from(Doctor doctor) {
        if (doctor == null) {
            return null;
        }
        return new DoctorDTO(doctor.getName(), doctor.getBmdcNo());

    }

   /* public static ResponseEntity<DoctorDTO> toResponseEntity(Optional<Doctor> optionalDoctor) {
        return optionalDoctor
                .map(doctor -> ResponseEntity.ok(DoctorDTO.from(doctor)))
                .orElse(ResponseEntity.notFound().build());*/
    }
