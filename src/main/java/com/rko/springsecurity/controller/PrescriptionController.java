package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.LocationDTO;
import com.rko.springsecurity.dto.PrescriptionDTO;
import com.rko.springsecurity.service.PrescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import java.util.List;

@RestController
@RequestMapping("/prescription")

public class PrescriptionController {
    @Autowired
    private PrescriptionService prescriptionService;

    @GetMapping("/by/{locationName}")
    public List<LocationDTO> getPrescriptionsByLocation(@PathVariable("locationName") String location) {
        return prescriptionService.searchPrescriptionsByArea(location);

    }

    @GetMapping("/{id}")
    public PrescriptionDTO getPrescriptionDetails(@PathVariable Long id) {
        return prescriptionService.getPrescriptionDetailsByRxNumber(id);
    }
}