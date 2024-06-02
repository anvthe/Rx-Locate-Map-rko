package com.rko.springsecurity.service;

import com.rko.springsecurity.domain.Drug;
import com.rko.springsecurity.domain.Location;
import com.rko.springsecurity.dto.*;
import com.rko.springsecurity.repository.PrescriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import org.springframework.data.domain.Pageable;

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


    @Autowired
    private PrescriptionRepository prescriptionRepository;



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









/*    public List<DivisionDTO> getDivisionsByDrugName(String drugName) {
        String  drug = drugService.getDrugByName(drugName);
        if (drug == null) {
            throw new NoSuchElementException("Drug not found");
        }

        List<Object[]> divisionsWithCounts = prescriptionRepository.findDivisionsByDrugName(drugName);

        List<DivisionDTO> results = new ArrayList<>();
        for (Object[] divisionWithCount : divisionsWithCounts) {
            Division division = (Division) divisionWithCount[0];
            long prescriptionCount = (long) divisionWithCount[1];

            results.add(new DivisionDTO(division,prescriptionCount));
        }

        return results;
    }*/


    public List<DivisionDTO> getDivisionsByDrugName(String drugName) {
        return prescriptionRepository.findDivisionsByDrugName(drugName);
    }



    public Page<AreaDTO> getLocationsByDivisionAndDrugName(String drugName, String divisionName, int page, int size, Sort prescriptionCount) {
        Pageable pageable = PageRequest.of(page, size);
        Page<AreaDTO> areaDTOPage = prescriptionRepository.findLocationsByDivisionAndDrugName(drugName, divisionName, pageable);
        return areaDTOPage;
    }










    public SearchResultDTO searchByDrugIdAndLocationId(Long locationId, Long drugId) {
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





























/*    public List<LocationDTO> getLocationsUnderDivision(Division division) {
        return locationService.findLocationsWithCountsByDivision(division);
    }*/
}