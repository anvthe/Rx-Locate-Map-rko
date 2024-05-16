package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.PrescriptionDTO;
import com.rko.springsecurity.dto.PrescriptionRxDTO;
import com.rko.springsecurity.service.PrescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping()
public class PrescriptionController {
    @Autowired
    private PrescriptionService prescriptionService;

  /*  @GetMapping("/prescriptions-by-location")
    public List<PrescriptionDTO> getPrescriptionsByLocation(@RequestParam("locationName") String location) {
        return prescriptionService.searchPrescriptionsByArea(location);
    }*/

    @GetMapping("/prescriptions/by-location")
    public List<PrescriptionRxDTO> getPrescriptionsByLocation(@RequestParam("locationName") String location) {
        return prescriptionService.getPrescriptionSummariesByLocation(location);
    }
}