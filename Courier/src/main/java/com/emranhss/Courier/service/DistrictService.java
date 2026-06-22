package com.emranhss.Courier.service;


import com.emranhss.Courier.dto.response.DistrictResponseDto;
import com.emranhss.Courier.entity.District;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface DistrictService {
    District save(District d);
    List<District> findAll();
    Optional<District> getById(Long id);
    void delete(Long id);

    List<DistrictResponseDto> findByDivisionId(Long divisionId);

    List<DistrictResponseDto> findByDivisionName(String divisionName);
}
