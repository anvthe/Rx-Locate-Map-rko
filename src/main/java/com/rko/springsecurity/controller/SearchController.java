package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.DrugDTO;
import com.rko.springsecurity.dto.LocationDTO;
import com.rko.springsecurity.dto.SearchResultDTO;
import com.rko.springsecurity.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.rko.springsecurity.enums.Division;

import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/map")
public class SearchController {
    @Autowired
    private SearchService searchService;


    @GetMapping("{locationName}/{drugName}")
    public ResponseEntity<?> search(
            @PathVariable("locationName") String locationName,
            @PathVariable("drugName") String drugName) {
        try {
            SearchResultDTO result = searchService.searchDrugNameByLocationName(locationName, drugName);
            return ResponseEntity.ok(result);
        } catch (NoSuchElementException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        }
    }



    @GetMapping("/id")
    public ResponseEntity<SearchResultDTO> search(@RequestParam Long locationId, @RequestParam Long drugId) {
        SearchResultDTO result = searchService.searchByDrugIdAndLocationId(locationId, drugId);
        if (result == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(result);
    }


    @GetMapping("/drugs")
    public List<DrugDTO> getAllDrugs() {
        return searchService.getAllDrugs();

    }


    @GetMapping("/locations")
    public List<LocationDTO> getAllLocations() {
        return searchService.getAllLocations();

    }

    @GetMapping("divisions")
    public List<String> getAllDivisions() {
        return Arrays.stream(Division.values()).map(Division::getLabel).toList();
    }

    @GetMapping("division/locations/{division}")
    public List<LocationDTO> getAllDivisionLocations(@PathVariable String division) {
        return searchService.getDivisionLocations(division);
    }
}