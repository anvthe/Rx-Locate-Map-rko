package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.LocationDTO;
//import com.rko.springsecurity.dto.PrescriptionSummaryDTO;
import com.rko.springsecurity.dto.PrescriptionDTO;
import com.rko.springsecurity.service.PrescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/prescriptions")
public class PrescriptionController {
    @Autowired
    private PrescriptionService prescriptionService;


    @GetMapping("/by-location")
    public List<LocationDTO> getPrescriptionsByLocation(@RequestParam("locationName") String location) {
        return prescriptionService.searchPrescriptionsByArea(location);

    }

    @GetMapping("/{id}")
    public PrescriptionDTO getPrescriptionDetails(@PathVariable Long id) {
        return prescriptionService.getPrescriptionDetailsByRxNumber(id);
    }

}