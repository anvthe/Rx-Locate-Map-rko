package com.rko.springsecurity.repository;

import com.rko.springsecurity.domain.Prescription;
import com.rko.springsecurity.dto.*;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import org.springframework.data.domain.Pageable;

import java.util.List;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {

    @Query("SELECT COUNT(p) FROM Prescription p JOIN p.location l JOIN p.drugs d  WHERE l.name = :locationName AND d.name = :drugName")
    int countUsersByDrugNameAndLocationName(@Param("locationName") String locationName, @Param("drugName") String drugName);

    @Query("SELECT COUNT(p) FROM Prescription p JOIN p.location l JOIN p.drugs d WHERE l.id = :locationId AND d.id = :drugId")
    int countUsersByDrugIdAndLocationId(@Param("locationId") Long locationId, @Param("drugId") Long drugId);

    @Query("SELECT new com.rko.springsecurity.dto.LocationDTO(p.id, l.name, l.lat, l.lng) FROM Prescription p JOIN p.location l WHERE l.name = :locationName")
    List<LocationDTO> findPrescriptionSummariesByLocationName(@Param("locationName") String locationName);

    @Query("SELECT new com.rko.springsecurity.dto.DivisionDTO(d.id, d.name, dr.name, COUNT(p), d.lat, d.lng) " +
            "FROM Prescription p " +
            "JOIN p.location l " +
            "JOIN l.division d " +
            "JOIN p.drugs dr " +
            "WHERE dr.name = :drugName  " +
            "GROUP BY d.name")
    List<DivisionDTO> findDivisionsByDrugName(@Param("drugName") String drugName);

    @Query("SELECT new com.rko.springsecurity.dto.AreaDTO(d.id, d.name, l.name, dr.name, COUNT(p), l.lat, l.lng) " +
            "FROM Prescription p " +
            "JOIN p.location l " +
            "JOIN l.division d " +
            "JOIN p.drugs dr " +
            "WHERE dr.name = :drugName AND d.name = :divisionName " +
            "GROUP BY l.name, l.lat, l.lng")
    Page<AreaDTO> findLocationsByDivisionAndDrugName(@Param("drugName") String drugName, @Param("divisionName") String divisionNam, Pageable pageable);

    @Query(value = "SELECT " +
            "    divi.name AS divisionName, " +
            "    COUNT(DISTINCT p.id) AS prescriptionCount, " +
            "    dr.drug_name as drugName " +
            "FROM prescriptions p " +
            "JOIN locations l ON p.location_id = l.id " +
            "JOIN prescription_drugs dp ON p.id = dp.prescription_id " +
            "JOIN drugs dr ON dr.id = dp.drug_id " +
            "JOIN divisions divi ON l.division_id = divi.id " +

            "WHERE dr.drug_name = :drugName " +
            "GROUP BY l.division_id, divi.name", nativeQuery = true)
    List<DivisionPrescriptionProjection> excelDataByDrugName(@Param("drugName") String drugName);

    @Query(value = "SELECT " +
            "    l.location_name AS districtName, " +
            "    COUNT(DISTINCT p.id) AS prescriptionCount " +
            "FROM prescriptions p " +
            "JOIN locations l ON p.location_id = l.id " +
            "JOIN prescription_drugs pd ON p.id = pd.prescription_id " +
            "JOIN drugs dr ON dr.id = pd.drug_id " +
            "JOIN divisions divi ON l.division_id = divi.id " +
            "WHERE dr.drug_name = :drugName  AND divi.name = :divisionName  " +
            "GROUP BY l.id, l.location_name", nativeQuery = true)
    List<DistrictPrescriptionProjection> excelDataByDrugNameAndDivisionName(@Param("drugName") String drugName, @Param("divisionName") String divisionName);
}