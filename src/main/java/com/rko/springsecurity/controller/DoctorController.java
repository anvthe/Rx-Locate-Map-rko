package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.DoctorDTO;
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
@RequestMapping("/doctors")
@RequiredArgsConstructor
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @GetMapping("/{bmdcNo}")
    public ResponseEntity<DoctorDTO> getDoctorByBmdc(@PathVariable String bmdcNo) {
        return doctorService.findDoctorByBmdc(bmdcNo)
                .map(doctor -> ResponseEntity.ok(new DoctorDTO(doctor.getName(), doctor.getBmdcNo())))
                .orElse(ResponseEntity.notFound().build());
    }


    @GetMapping("/by-location/{locationName}")
    public List<DoctorDTO> getDoctorByLocation(@PathVariable String locationName) {
        return doctorService.getAllDoctorsByLocation(locationName);
    }
}

