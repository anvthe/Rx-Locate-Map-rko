package com.rko.springsecurity.controller;

import com.rko.springsecurity.domain.Drug;
import com.rko.springsecurity.domain.Location;
import com.rko.springsecurity.dto.AreaDTO;
import com.rko.springsecurity.dto.DivisionDTO;
import com.rko.springsecurity.dto.SearchResultDTO;
import com.rko.springsecurity.service.DrugService;
import com.rko.springsecurity.service.LocationService;
import com.rko.springsecurity.service.SearchService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.NoSuchElementException;

@RestController
@RequestMapping("/map")
@RequiredArgsConstructor
public class SearchController {

    private final SearchService searchService;

    private final LocationService locationService;

    private final DrugService drugService;

    @GetMapping("/{locationName}/{drugName}")
    public ResponseEntity<?> search(@PathVariable("locationName") String locationName,
                                    @PathVariable("drugName") String drugName) {
        Location location = locationService.getLocationByName(locationName).orElseThrow(NoSuchElementException::new);

        Drug drug = drugService.findByName(drugName).orElseThrow(NoSuchElementException::new);

        SearchResultDTO result = searchService.searchDrugNameByLocationName(location, drug);

        return ResponseEntity.ok(result);
    }

    @GetMapping("/id")
    public ResponseEntity<SearchResultDTO> search(@RequestParam Long locationId,
                                                  @RequestParam Long drugId) {
        SearchResultDTO result = searchService.searchByDrugIdAndLocationId(locationId, drugId);

        return ResponseEntity.ok(result);
    }






    @GetMapping("/{drugName}")
    public ResponseEntity<?> getDivisionsByDrugName(@PathVariable String drugName) {
        List<DivisionDTO> divisions = searchService.getDivisionsByDrugName(drugName);

        return ResponseEntity.ok(divisions);
    }

    @GetMapping("/select/{drugName}/{divisionName}")
    public ResponseEntity<?> getLocationsByDivisionAndDrugName(@PathVariable String drugName,
                                                               @PathVariable String divisionName,
                                                               @RequestParam(defaultValue = "0") int page,
                                                               @RequestParam(defaultValue = "10") int size) {
        List<AreaDTO> locations = searchService.getLocationsByDivisionAndDrugName(drugName, divisionName, page, size).getContent();

        return ResponseEntity.ok(locations);
    }
}
