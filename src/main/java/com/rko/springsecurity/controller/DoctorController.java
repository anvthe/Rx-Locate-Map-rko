package com.rko.springsecurity.controller;

import com.rko.springsecurity.domain.Doctor;
import com.rko.springsecurity.dto.DoctorDTO;
import com.rko.springsecurity.dto.PrescriptionDTO;
import com.rko.springsecurity.repository.DoctorRepository;
import com.rko.springsecurity.service.DoctorService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;



@RestController
@RequestMapping("/doctor")
@RequiredArgsConstructor
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @Autowired
    private DoctorRepository doctorRepository;

    @GetMapping("/info/{bmdcNo}")
    public DoctorDTO getDoctorByBmdc(@PathVariable String bmdcNo) {
        return doctorService.findDoctorByBmdc(bmdcNo);
    }


    @GetMapping("/by/{locationName}")
    public List<DoctorDTO> getDoctorByLocation(@PathVariable String locationName) {
        return doctorService.getAllDoctorsByLocation(locationName);
    }

    @GetMapping("/doctor-list-by-drug/{drugName}")
    public ResponseEntity<List<DoctorDTO>> getDoctorsByDrug(@PathVariable String drugName) {
        List<DoctorDTO> doctorDTOS = doctorRepository.findDoctorsByDrug(drugName).stream()
                .map(DoctorDTO::from)
                .toList();

        return ResponseEntity.ok(doctorDTOS);
    }
}

