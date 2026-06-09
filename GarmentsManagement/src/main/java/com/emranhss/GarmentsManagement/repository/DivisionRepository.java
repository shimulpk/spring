package com.emranhss.GarmentsManagement.repository;

import com.emranhss.GarmentsManagement.dto.DivisionDto;
import com.emranhss.GarmentsManagement.entity.Division;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface DivisionRepository extends JpaRepository<Division,Long> {

// Find All division by countryId
    List<Division> findByCountryId(Long countryID);


    // Find All division by country Name
    List<Division> findByCountryName(String countryName);
}
