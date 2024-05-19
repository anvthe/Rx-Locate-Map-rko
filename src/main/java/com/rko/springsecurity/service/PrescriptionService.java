package com.rko.springsecurity.service;

import com.rko.springsecurity.domain.Prescription;
import com.rko.springsecurity.dto.LocationDTO;
import com.rko.springsecurity.dto.PrescriptionDTO;
import com.rko.springsecurity.mapper.PrescriptionMapper;
import com.rko.springsecurity.repository.PrescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PrescriptionService {
    @Autowired
    private PrescriptionRepository prescriptionRepository;

    public int countUsersByDrugNameAndLocationName(String drugName, String locationName) {
        return prescriptionRepository.countUsersByDrugNameAndLocationName(drugName, locationName);
    }

    public int countUsersByDrugIdAndLocationId(Long drugId, Long locationId) {
        return prescriptionRepository.countUsersByDrugIdAndLocationId(drugId, locationId);
    }


    public List<LocationDTO> searchPrescriptionsByArea(String locationName) {
        return prescriptionRepository.findPrescriptionSummariesByLocationName(locationName);
    }


    public PrescriptionDTO getPrescriptionDetailsByRxNumber(Long prescriptionId) {
        Optional<Prescription> prescription = prescriptionRepository.findById(prescriptionId);
        return prescription.map(PrescriptionMapper::toPrescriptionDTO).orElse(null);
    }


}
