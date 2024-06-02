package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.LocationDTO;
import com.rko.springsecurity.service.SearchService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/location")
@RequiredArgsConstructor
public class LocationController {

    private final SearchService searchService;

    @GetMapping("/location-list")
    public ResponseEntity<List<LocationDTO>> getAllLocations() {
        return new ResponseEntity<>(searchService.getAllLocations(), HttpStatus.OK);
    }
}