//package com.rko.springsecurity.mapper;
//
//import com.rko.springsecurity.domain.Prescription;
//import com.rko.springsecurity.dto.*;
//
//import java.util.List;
//import java.util.stream.Collectors;
//
//
//public class PrescriptionMapper {
//    public static PrescriptionDTO toDTO(Prescription prescription) {
//        if (prescription == null) {
//            return null;
//        }
//
//        DoctorDTO doctorDTO = new DoctorDTO(
//                prescription.getDoctor().getName(),
//                prescription.getDoctor().getBmdcNo()
//        );
//
//        PatientDTO patientDTO = new PatientDTO(
//                prescription.getPatient().getName(),
//                prescription.getPatient().getPhone(),
//                prescription.getPatient().getAge()
//        );
//
//        LocationDTO locationDTO = new LocationDTO(
//                prescription.getLocation().getName(),
//                prescription.getLocation().getLatitude(),
//                prescription.getLocation().getLongitude()
//        );
//
//        List<DrugDTO> drugDTOs = prescription.getDrugs().stream()
//                .map(drug -> new DrugDTO(drug.getName()))
//                .collect(Collectors.toList());
//
//        return new PrescriptionDTO(
//                doctorDTO,
//                patientDTO,
//                locationDTO,
//                drugDTOs
//        );
//    }
//}