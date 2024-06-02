package com.rko.springsecurity.service;

import com.rko.springsecurity.domain.Drug;
import com.rko.springsecurity.dto.DrugDTO;
import com.rko.springsecurity.dto.DrugDetailsDTO;
import com.rko.springsecurity.repository.DrugRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class DrugService {
    private final DrugRepository drugRepository;

    public String getDrugByName(String name) {
        Optional<Drug> drugOptional = drugRepository.findByName(name);
        return drugOptional.map(Drug::getName).orElse(null);
    }

    public Drug getDrugById(Long drugId) {
        Optional<Drug> drugOptional = drugRepository.findById(drugId);
        return drugOptional.orElse(null);
    }

    public List<DrugDTO> getAllDrugs() {
        return drugRepository.findAll().stream().map(DrugDTO::from).toList();
    }

    public DrugDetailsDTO fetchDrugInfoByName(String name) {
        return drugRepository.fetchDrugInfoByName(name);
    }

    public Optional<Drug> findByName(String name) {
        return drugRepository.findByName(name);
    }
}