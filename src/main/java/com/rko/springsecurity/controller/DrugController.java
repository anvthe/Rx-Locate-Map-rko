package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.DrugDTO;
import com.rko.springsecurity.dto.DrugDetailsDTO;
import com.rko.springsecurity.service.DrugService;
import com.rko.springsecurity.service.SearchService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/drug")
@RequiredArgsConstructor
public class DrugController {

    private final SearchService searchService;

    private final DrugService drugService;

    @GetMapping("/drug-list")
    public ResponseEntity<List<DrugDTO>> getAllDrugs() {
        return new ResponseEntity<>(drugService.getAllDrugs(), HttpStatus.OK);
    }

    @GetMapping("/drug-info/{drugName}")
    public ResponseEntity<DrugDetailsDTO> getDrugByName(@PathVariable String drugName) {
        DrugDetailsDTO drug = drugService.fetchDrugInfoByName(drugName);
        return ResponseEntity.ok(drug);
    }

}