package com.rko.springsecurity.service;

import com.rko.springsecurity.domain.Drug;
import com.rko.springsecurity.dto.DrugDTO;
import com.rko.springsecurity.dto.DrugDetailsDTO;
import com.rko.springsecurity.repository.DrugRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DrugService {
    @Autowired
    private DrugRepository drugRepository;

    public String getDrugByName(String name) {
        Optional<Drug> drugOptional = drugRepository.findByName(name);
        return drugOptional.map(Drug::getName).orElse(null);
    }

    public Drug getDrugById(Long drugId) {
        Optional<Drug> drugOptional = drugRepository.findById(drugId);
        return drugOptional.orElse(null);
    }

    public List<DrugDetailsDTO> getAllDrugs() {
        return drugRepository.findAll()
                .stream()
                .map(drug -> new DrugDetailsDTO(drug.getName(), drug.getFormula(), drug.getStrength()))
                .toList();
    }


    public Optional<Drug> fetchDrugByName(String name) {
        return drugRepository.findByName(name);
    }
}