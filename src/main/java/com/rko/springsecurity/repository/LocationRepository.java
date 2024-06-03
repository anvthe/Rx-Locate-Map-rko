package com.rko.springsecurity.repository;

import com.rko.springsecurity.domain.Location;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface LocationRepository extends JpaRepository<Location, Long> {
    Optional<Location> findByName(String locationName);

    Optional<Location> findById(Long locationId);

   /* List<Location> findAllByDivision(Division division);*/
}
