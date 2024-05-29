package com.rko.springsecurity.controller;


import com.rko.springsecurity.dto.DivisionDTO;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/division")
@RequiredArgsConstructor
public class DivisionController {



    /*@GetMapping("/division-list")
    public List<DivisionDTO> getAllDivisions() {
        return searchService.getAllDivisions();

    }*/
}
