package com.rko.springsecurity.service;


import com.rko.springsecurity.domain.Doctor;
import com.rko.springsecurity.dto.DoctorDTO;
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

    public Optional<Doctor> findDoctorByBmdc(String bmdcNo) {
        return doctorRepository.findByBmdcNo(bmdcNo);
    }


    public List<DoctorDTO> getAllDoctorsByLocation(String locationName) {
        List<Doctor> doctors = doctorRepository.findDoctorsByLocation(locationName);
        return doctors.stream()
                .map(doctor -> new DoctorDTO(doctor.getName(), doctor.getBmdcNo()))
                .collect(Collectors.toList());
    }
}