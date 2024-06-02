
package com.rko.springsecurity.service;


import com.rko.springsecurity.dto.DistrictPrescriptionProjection;
import com.rko.springsecurity.dto.DivisionPrescriptionProjection;
import com.rko.springsecurity.helper.ExcelHelper;
import com.rko.springsecurity.repository.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.io.ByteArrayInputStream;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ExcelService {

    private final PrescriptionRepository prescriptionRepository;

    public ByteArrayInputStream getExcelDataForDivision(String drugName) {
        List<DivisionPrescriptionProjection> divisionPrescriptionProjections = prescriptionRepository.excelDataByDrugName(drugName);
        return ExcelHelper.divisionDataToExcel(divisionPrescriptionProjections);
    }

    public ByteArrayInputStream getExcelDataForDistrict(String drugName, String divisionName) {
        List<DistrictPrescriptionProjection> districtPrescriptionProjections = prescriptionRepository.excelDataByDrugNameAndDivisionName(drugName, divisionName);
        return ExcelHelper.districtDataToExcel(districtPrescriptionProjections);
    }
}
