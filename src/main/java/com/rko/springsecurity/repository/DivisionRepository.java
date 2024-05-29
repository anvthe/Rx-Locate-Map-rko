package com.rko.springsecurity.repository;

import com.rko.springsecurity.domain.Division;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DivisionRepository extends JpaRepository<Division, Long> {
}
