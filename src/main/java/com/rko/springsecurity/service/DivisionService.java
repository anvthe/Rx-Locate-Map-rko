package com.rko.springsecurity.service;

import com.rko.springsecurity.dto.DivisionAreaDTO;
import com.rko.springsecurity.repository.DivisionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class DivisionService {
    private final DivisionRepository divisionRepository;

    public List<DivisionAreaDTO> getAllDivisions() {
        return divisionRepository.findAll()
                .stream().map(DivisionAreaDTO::from)
                .toList();
    }
}

