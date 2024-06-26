package com.rko.springsecurity.service;


import com.rko.springsecurity.domain.Doctor;
import com.rko.springsecurity.domain.Prescription;
import com.rko.springsecurity.dto.DoctorDTO;
import com.rko.springsecurity.dto.PrescriptionDTO;
import com.rko.springsecurity.repository.DoctorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class DoctorService {
    @Autowired
    private DoctorRepository doctorRepository;

/*    public Optional<Doctor> findDoctorByBmdc(String bmdcNo) {
        return doctorRepository.findByBmdcNo(bmdcNo);
    }*/

    public DoctorDTO findDoctorByBmdc(String bmdcNo) {
        Optional<Doctor> doctor = doctorRepository.findByBmdcNo(bmdcNo);
        return doctor.map(DoctorDTO::from).orElse(null);
    }


    public List<DoctorDTO> getAllDoctorsByLocation(String locationName) {
        List<Doctor> doctors = doctorRepository.findDoctorsByLocation(locationName);
        return doctors.stream()
                .map(doctor -> new DoctorDTO(doctor.getName(), doctor.getBmdcNo()))
                .collect(Collectors.toList());
    }


        public List<DoctorDTO> getDoctorsByDivisionAndDrug(String divisionName, String drugName) {
            List<Doctor> doctors = doctorRepository.findDoctorsByDivisionAndDrug(divisionName, drugName);
            return doctors.stream()
                    .map(DoctorDTO::from)
                    .collect(Collectors.toList());
        }
    }