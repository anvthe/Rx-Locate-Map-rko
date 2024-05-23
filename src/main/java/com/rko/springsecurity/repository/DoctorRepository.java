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

}