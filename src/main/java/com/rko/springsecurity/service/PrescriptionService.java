package com.rko.springsecurity.service;

import com.rko.springsecurity.dto.PrescriptionDTO;
import com.rko.springsecurity.dto.PrescriptionRxDTO;
//import com.rko.springsecurity.mapper.PrescriptionMapper;
import com.rko.springsecurity.repository.PrescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

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


  /*  public List<PrescriptionDTO> searchPrescriptionsByArea(String locationName) {
        return prescriptionRepository.findByLocationName(locationName)
                .stream()
                .map(PrescriptionMapper::toDTO)
                .collect(Collectors.toList());
    }*/

    public List<PrescriptionRxDTO> getPrescriptionSummariesByLocation(String locationName) {
        return prescriptionRepository.findPrescriptionSummariesByLocationName(locationName);
    }

   /* public List<Prescription> findByDrugIdAndLocationId(Long drugId, Long locationId) {
        return prescriptionRepository.findByDrugIdAndLocationId(drugId, locationId);
    }*/
}
