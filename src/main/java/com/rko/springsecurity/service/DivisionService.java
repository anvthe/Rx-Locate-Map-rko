package com.rko.springsecurity.service;


import com.rko.springsecurity.dto.DivisionAreaDTO;
import com.rko.springsecurity.repository.DivisionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class DivisionService {

    @Autowired
    private DivisionRepository divisionRepository;


    public List<DivisionAreaDTO> getAllDivisions() {
        return divisionRepository.findAll()
                .stream()
                .map(division -> new DivisionAreaDTO(division.getName(),division.getLat(),division.getLng()))
                .toList();
    }


}

