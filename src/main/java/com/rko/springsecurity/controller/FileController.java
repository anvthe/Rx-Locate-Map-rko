/*
package com.rko.springsecurity.controller;

import com.rko.springsecurity.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayInputStream;
import java.io.IOException;

@RestController
@RequestMapping("/excel")
public class FileController {

    @Autowired
    private FileService fileService;

    @GetMapping("/division-data/{drugName}")
    public ResponseEntity<InputStreamResource> download(@PathVariable("drugName") String drugName) throws IOException {
        String filename ="division.xlsx";
        ByteArrayInputStream actualData = fileService.getExcelData();
        InputStreamResource resource = new InputStreamResource(actualData);
        return ResponseEntity.ok()
                .header("Content-Disposition", "attachment; filename=\"" + filename + "\"")
                .contentType(MediaType.parseMediaType("application/vnd.ms-excel"))
                .body(resource);
    }
}
*/
