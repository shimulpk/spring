package com.emranhss.Courier.service;


import com.emranhss.Courier.dto.DivisionDto;
import com.emranhss.Courier.entity.Division;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface DivisionService {
    Division save(Division d);
    List<Division> findAll();
    Optional<Division> getById(Long id);
    void delete(Long id);

    List<DivisionDto> getDivisionsByCountryId(Long countryId);

    List<DivisionDto> getDivisionsByCountryName(String countryName);

}
