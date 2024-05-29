package com.rko.springsecurity.repository;

import com.rko.springsecurity.domain.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface DoctorRepository extends JpaRepository<Doctor, String> {

    Optional<Doctor> findByBmdcNo(String bmdcNo);

    @Query("SELECT d FROM Doctor d JOIN d.prescriptions p JOIN p.location l WHERE l.name = :locationName")
    List<Doctor> findDoctorsByLocation(@Param("locationName") String locationName);



    @Query(value = "SELECT DISTINCT d.id, d.bmdc, d.name " +
            "FROM doctors d " +
            "JOIN prescriptions p ON d.id = p.doctor_id " +
            "JOIN prescription_drugs pd ON p.id = pd.prescription_id " +
            "JOIN drugs dr ON pd.drug_id = dr.id " +
            "WHERE dr.drug_name = :drugName ", nativeQuery = true)
    List<Doctor> findDoctorsByDrug(@Param("drugName") String drugName);


}