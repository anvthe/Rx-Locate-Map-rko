/*
package com.rko.springsecurity.service;

import com.rko.springsecurity.dto.DivisionFileProjection;
import com.rko.springsecurity.helper.FileHelper;
import com.rko.springsecurity.repository.DivisionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class FileService {

    @Autowired
    private DivisionRepository divisionRepository;

    public ByteArrayInputStream getExcelData(String drugName) throws IOException {
        List<DivisionFileProjection> allDivisions = divisionRepository.findAll(drugName);
        List<DivisionFileProjection> all = allDivisions.stream()
                .map(division -> new DivisionFileProjection(division.getDivisionName(), division.getDrugName(), division.getPrescriptionCount()))
                .collect(Collectors.toList());
        return FileHelper.dataToExcel(all);
    }
}*/
