package com.emranhss.GarmentsManagement.service;


import com.emranhss.GarmentsManagement.dto.DivisionDto;
import com.emranhss.GarmentsManagement.dto.response.DistrictResponseDto;
import com.emranhss.GarmentsManagement.entity.District;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface DistrictService {
    District save(District d);
    List<District> findAll();
    Optional<District> getById(Integer id);
    void delete(Integer id);

    List<DistrictResponseDto> findByDivisionId(Integer divisionId);

    List<DistrictResponseDto> findByDivisionName(String divisionName);
}
