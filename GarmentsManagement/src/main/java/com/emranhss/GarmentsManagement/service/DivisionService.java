package com.emranhss.GarmentsManagement.service;


import com.emranhss.GarmentsManagement.entity.Division;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface DivisionService {
    Division save(Division d);
    List<Division> findAll();
    Optional<Division> getById(Integer id);
    void delete(Integer id);

    List<Division> getDivisionsByCountryId(Integer countryId);

    List<Division> getDivisionsByCountryName(String countryName);

}
