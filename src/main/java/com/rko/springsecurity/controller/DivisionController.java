package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.DivisionAreaDTO;
import com.rko.springsecurity.service.DivisionService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/div")
@RequiredArgsConstructor
public class DivisionController {

    private final DivisionService divisionService;

    @GetMapping("/division-list")
    public ResponseEntity<List<DivisionAreaDTO>> getAllDivisions() {
        return new ResponseEntity<>(divisionService.getAllDivisions(), HttpStatus.OK);
    }
}

