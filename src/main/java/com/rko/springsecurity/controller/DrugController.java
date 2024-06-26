package com.rko.springsecurity.controller;

import com.rko.springsecurity.domain.Drug;
import com.rko.springsecurity.dto.DrugDTO;
import com.rko.springsecurity.dto.DrugDetailsDTO;
import com.rko.springsecurity.service.DrugService;
import com.rko.springsecurity.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/drug")
public class DrugController {

    @Autowired
    private SearchService searchService;

    @Autowired
    private DrugService drugService;


    @GetMapping("/drug-list")
    public List<DrugDTO> getAllDrugs() {
        return searchService.getAllDrugs();

    }


    @GetMapping("/drug-info/{drugName}")
    public ResponseEntity<DrugDetailsDTO> getDrugByName(@PathVariable String drugName) {
        DrugDetailsDTO drug = drugService.fetchDrugInfoByName(drugName);
        return ResponseEntity.ok(drug);
    }









/*    @GetMapping("/name/{drugName}")
    public ResponseEntity<DrugDetailsDTO> getDrugByName(@PathVariable String drugName) {

        DrugDetailsDTO drug = drugService.fetchDrugInfoByName(drugName);
        DrugDetailsDTO detailsDTO = DrugDetailsDTO.from(drug);

        return ResponseEntity.ok(detailsDTO);
    }*/



}
