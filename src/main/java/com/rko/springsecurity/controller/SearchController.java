package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.*;
import com.rko.springsecurity.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/map")
public class SearchController {
    @Autowired
    private SearchService searchService;


    @GetMapping("/{locationName}/{drugName}")
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












/*
    @GetMapping("/list-divisions")
    public List<String> getAllDivisions() {
        return Arrays.stream(Division.values()).map(Division::getLabel).toList();
    }





    @GetMapping("/{division}")
    public List<LocationDTO> getAllDivisionLocations(@PathVariable String division) {
        return searchService.getDivisionLocations(division);
    }
*/







    @GetMapping("/{drugName}")
    public ResponseEntity<?> getDivisionsByDrugName(@PathVariable String drugName) {
        List<DivisionDTO> divisions = searchService.getDivisionsByDrugName(drugName);
        return ResponseEntity.ok(divisions);
    }




@GetMapping("/select/{drugName}/{divisionName}")
    public ResponseEntity<?> getLocationsByDivisionAndDrugName(
            @PathVariable String drugName,
            @PathVariable String divisionName,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        List<AreaDTO> locations = searchService.getLocationsByDivisionAndDrugName(drugName, divisionName, page, size, Sort.by("prescriptionCount").descending()).getContent();
        return ResponseEntity.ok(locations);
    }


}
