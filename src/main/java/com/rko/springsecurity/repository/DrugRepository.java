package com.rko.springsecurity.repository;

import com.rko.springsecurity.domain.Drug;
import com.rko.springsecurity.dto.DrugDTO;
import com.rko.springsecurity.dto.DrugDetailsDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface DrugRepository extends JpaRepository<Drug, Long> {
    Optional<Drug> findByName(String drugName);

    Optional<Drug> findById(Long drugId);


 /*   @Query(value = "SELECT " +
            "    d.drug_name AS drugName, " +
            "    d.formula As drugFormation, " +
            "    d.strength As drugStrength, " +
            "    v.name AS vendor, " +
            "    g.name AS generic " +
            "FROM drugs d " +
            "LEFT JOIN vendors v ON d.vendor_id = v.id " +
            "LEFT JOIN generics g ON d.generic_id = g.id " +
            "WHERE d.drug_name = :drugName", nativeQuery = true)

    DrugDetailsDTO fetchDrugInfoByName(@Param("drugName") String drugName);*/

/*    @Query(value = "SELECT " +
            "    d.drug_name AS name, " +
            "    d.formula AS drugFormation, " +
            "    d.strength AS drugStrength, " +
            "    g.name AS generic, " +
            "    v.name AS vendor " +
            "FROM drugs d " +
            "LEFT JOIN vendors v ON d.vendor_id = v.id " +
            "LEFT JOIN generics g ON d.generic_id = g.id " +
            "WHERE d.drug_name = :drugName", nativeQuery = true)
    DrugDetailsDTO fetchDrugInfoByName(@Param("drugName") String drugName);*/


    @Query("SELECT new com.rko.springsecurity.dto.DrugDetailsDTO(dr.name, dr.formula, dr.strength, g.name, v.name) " +
            "FROM Drug dr " +
            "LEFT JOIN dr.vendor v " +
            "LEFT JOIN dr.generic g " +
            "WHERE dr.name = :drugName")
    DrugDetailsDTO fetchDrugInfoByName(@Param("drugName") String drugName);
}


