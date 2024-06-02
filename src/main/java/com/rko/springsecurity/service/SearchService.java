package com.rko.springsecurity.service;

import com.rko.springsecurity.domain.Drug;
import com.rko.springsecurity.domain.Location;
import com.rko.springsecurity.dto.*;
import com.rko.springsecurity.repository.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class SearchService {
    private final DrugService drugService;

    private final LocationService locationService;

    private final PrescriptionService prescriptionService;

    private final PrescriptionRepository prescriptionRepository;

    public SearchResultDTO searchDrugNameByLocationName(Location location, Drug drug) {
        int prescriptionCount = prescriptionService.countUsersByDrugNameAndLocationName(location.getName(), drug.getName());

        SearchResultDTO result = new SearchResultDTO();

        result.setPrescriptionCount(prescriptionCount);
        result.setDrugName(drug.getName());
        result.setLocationName(location.getName());
        result.setLocationLat(location.getLat());
        result.setLocationLng(location.getLng());

        return result;
    }

    public List<DivisionDTO> getDivisionsByDrugName(String drugName) {
        return prescriptionRepository.findDivisionsByDrugName(drugName);
    }

    public Page<AreaDTO> getLocationsByDivisionAndDrugName(String drugName,
                                                           String divisionName,
                                                           int page,
                                                           int size) {
        Pageable pageable = PageRequest.of(page, size);
        return prescriptionRepository.findLocationsByDivisionAndDrugName(drugName, divisionName, pageable);
    }

    public SearchResultDTO searchByDrugIdAndLocationId(Long locationId, Long drugId) {
        Location location = locationService.getLocationById(locationId);

        Drug drug = drugService.getDrugById(drugId);

        return searchDrugNameByLocationName(location, drug);
    }

    public List<LocationDTO> getAllLocations() {
        return locationService.getAllLocations();
    }
}