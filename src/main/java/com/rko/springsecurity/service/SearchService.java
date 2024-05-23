package com.rko.springsecurity.service;

import com.rko.springsecurity.domain.Drug;
import com.rko.springsecurity.domain.Location;
import com.rko.springsecurity.dto.DrugDTO;
import com.rko.springsecurity.dto.LocationDTO;
import com.rko.springsecurity.dto.SearchResultDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rko.springsecurity.enums.Division;

import java.util.List;
import java.util.NoSuchElementException;


@Service
public class SearchService {
    @Autowired
    private DrugService drugService;

    @Autowired
    private LocationService locationService;

    @Autowired
    private PrescriptionService prescriptionService;



    public SearchResultDTO searchDrugNameByLocationName(String locationName, String drugName) {
        Location location = locationService.getLocationByName(locationName);
        if (location == null) {
            throw new NoSuchElementException("Location not found");
        }

        String drug = drugService.getDrugByName(drugName);
        if (drug == null) {
            throw new NoSuchElementException("Drug not found");
        }

        int prescriptionCount = prescriptionService.countUsersByDrugNameAndLocationName(locationName, drugName);

        SearchResultDTO result = new SearchResultDTO();
        result.setPrescriptionCount(prescriptionCount);
        result.setDrugName(drug);
        result.setLocationName(locationName);
        result.setLocationLat(location.getLat());
        result.setLocationLng(location.getLng());

        return result;
    }


    public SearchResultDTO searchByDrugIdAndLocationId(Long locationId, Long drugId){
    Location location = locationService.getLocationById(locationId);
        if (location == null) {
        throw new NoSuchElementException("Location not found");
    }

    Drug drug = drugService.getDrugById(drugId);
        if (drug == null) {
        throw new NoSuchElementException("Drug not found");
    }

        int prescriptionCount = prescriptionService.countUsersByDrugIdAndLocationId(locationId, drugId);

    SearchResultDTO result = new SearchResultDTO();
        result.setPrescriptionCount(prescriptionCount);
        result.setDrugName(drug.getName());
        result.setLocationName(location.getName());
        result.setLocationLat(location.getLat());
        result.setLocationLng(location.getLng());

        return result;
}

    public List<DrugDTO> getAllDrugs() {
        return drugService.getAllDrugs();
    }

    public List<LocationDTO> getAllLocations() {
        return locationService.getAllLocations();
    }

    public List<LocationDTO> getDivisionLocations(String division) {
        return locationService.getLocationsUnderDivision(Division.findByLabel(division));
    }
}
