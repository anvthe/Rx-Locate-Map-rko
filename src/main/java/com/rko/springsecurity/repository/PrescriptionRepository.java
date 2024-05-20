package com.rko.springsecurity.repository;

import com.rko.springsecurity.domain.Prescription;
import com.rko.springsecurity.dto.LocationDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {

    @Query("SELECT COUNT(p) FROM Prescription p JOIN p.location l JOIN p.drugs d  WHERE l.name = :locationName AND d.name = :drugName")
    int countUsersByDrugNameAndLocationName(@Param("locationName") String locationName, @Param("drugName") String drugName);


    @Query("SELECT COUNT(p) FROM Prescription p JOIN p.location l JOIN p.drugs d WHERE l.id = :locationId AND d.id = :drugId")
    int countUsersByDrugIdAndLocationId(@Param("locationId") Long locationId, @Param("drugId") Long drugId);


    @Query("SELECT new com.rko.springsecurity.dto.LocationDTO(p.id, l.name, l.lat, l.lng) FROM Prescription p JOIN p.location l WHERE l.name = :locationName")
    List<LocationDTO> findPrescriptionSummariesByLocationName(@Param("locationName") String locationName);






  /*  @Query("SELECT p FROM Prescription p JOIN p.location l WHERE l.name = :locationName")
    List<Prescription> findByLocationName(@Param("locationName") String locationName);*/

    /*@Query("SELECT p FROM Prescription p JOIN p.location l WHERE l.name = :locationName")
    List<PrescriptionRxDTO> findPrescriptionSummariesByLocationName(@Param("locationName") String locationName);*/




/*    @Query("SELECT COUNT(p) FROM Prescription p JOIN p.drugs d JOIN p.location l WHERE d.drugName LIKE %:drugName% AND l.locationName LIKE %:locationName%")
    Long countPrescriptionsByDrugNameAndLocationName(@Param("drugName") String drugName, @Param("locationName") String locationName);*/

  /*  @Query("SELECT COUNT(p) FROM Prescription p WHERE p.id = :drugId AND p.location.id = :locationId")
    List<Prescription> findByDrugIdAndLocationId(@Param("drugId") Long drugId, @Param("locationId") Long locationId);*/

    //List<Prescription> findByDrugIdAndLocationId(Long drugId, Long locationId);


   /* @Query(value = "SELECT COUNT(p) FROM Prescription p JOIN p.brands b JOIN p.location l WHERE b.brandName = :brandName AND l.locationName = :locationName")
    int countUsersByBrandNameAndLocationName(String brandName, String locationName);*/
}