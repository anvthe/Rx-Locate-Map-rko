package com.rko.springsecurity.helper;

import com.rko.springsecurity.dto.DivisionFileProjection;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

public class FileHelper {

    public static String[] Header = {
            "Division Name",
            "Drug Name",
            "Prescription Count"
    };

    public static String SHEET_NAME = "division_data";

    public static ByteArrayInputStream dataToExcel(List<DivisionFileProjection> list) throws IOException {
        Workbook workbook = new XSSFWorkbook();
        ByteArrayOutputStream out = new ByteArrayOutputStream();

        try  {
            Sheet sheet = workbook.createSheet(SHEET_NAME);

            // Create header row
            Row headerRow = sheet.createRow(0);
            for (int i = 0; i < Header.length; i++) {
                Cell cell = headerRow.createCell(i);
                cell.setCellValue(Header[i]);
            }

            // Create data rows
            int rowIndex = 1;
            for (DivisionFileProjection division : list) {
                Row dataRow = sheet.createRow(rowIndex);
                dataRow.createCell(0).setCellValue(division.getDivisionName());
                dataRow.createCell(1).setCellValue(division.getDrugName());
                dataRow.createCell(2).setCellValue(division.getPrescriptionCount());
                rowIndex++;
            }

            workbook.write(out);
            return new ByteArrayInputStream(out.toByteArray());

        } finally {
            workbook.close(); // Ensure workbook resources are closed
        }
    }
}
