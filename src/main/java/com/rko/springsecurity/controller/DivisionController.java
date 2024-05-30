package com.rko.springsecurity.controller;

import com.rko.springsecurity.dto.DivisionAreaDTO;
import com.rko.springsecurity.service.DivisionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/division")
public class DivisionController {

@Autowired
private DivisionService divisionService;

    @GetMapping("/division-list")
    public List<DivisionAreaDTO> getAllDivisions() {
        return divisionService.getAllDivisions();

    }
}

