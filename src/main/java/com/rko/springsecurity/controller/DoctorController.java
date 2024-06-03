package com.rko.springsecurity.controller;


import com.rko.springsecurity.dto.DoctorDTO;

import com.rko.springsecurity.dto.DoctorDivisionProjection;
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
import java.util.stream.Collectors;


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






        @GetMapping("/doctor-list-by-division-drug/{divisionName}/{drugName}")
        public ResponseEntity<List<DoctorDTO>> getDoctorsByDivisionAndDrug(@PathVariable String divisionName, @PathVariable String drugName) {
            List<DoctorDTO> doctorDTOS = doctorService.getDoctorsByDivisionAndDrug(divisionName, drugName);
            return ResponseEntity.ok(doctorDTOS);
        }





    @GetMapping("/doctor-division-list-by-drug/{drugName}")
    public ResponseEntity<List<DoctorDivisionProjection>> getDoctorsByDrug(@PathVariable String drugName) {
        List<DoctorDivisionProjection> doctors = doctorRepository.findDoctorsWithDivisionByDrug(drugName);
        return ResponseEntity.ok(doctors);
    }

}




