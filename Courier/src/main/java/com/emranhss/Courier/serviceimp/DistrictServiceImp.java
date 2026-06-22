package com.emranhss.Courier.serviceimp;



import com.emranhss.Courier.dto.response.DistrictResponseDto;
import com.emranhss.Courier.entity.District;
import com.emranhss.Courier.entity.Division;
import com.emranhss.Courier.repository.DistrictRepository;
import com.emranhss.Courier.repository.DivisionRepository;
import com.emranhss.Courier.service.DistrictService;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;


import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class DistrictServiceImp implements DistrictService {

    @Autowired
    private DistrictRepository districtRepository;

    @Autowired
    private DivisionRepository divisionRepository;



    @Override
    public District save(District d) {
    Long divisionId= d.getDivision().getId();
        Division division=divisionRepository.findById(divisionId)
                .orElseThrow(()-> new RuntimeException("Division not found with this id"));

        d.setDivision(division);
        return districtRepository.save(d);
    }

    @Override
    public List<District> findAll() {
        return districtRepository.findAll();
    }

    @Override
    public Optional<District> getById(Long id) {
        return districtRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
    districtRepository.deleteById(id);
    }

    @Override
    public List<DistrictResponseDto> findByDivisionId(Long divisionId) {
        List<District> list= districtRepository.findByDivisionId(divisionId);
        return list.stream().map(this::convertToDto).collect(Collectors.toList());
    }

    @Override
    public List<DistrictResponseDto> findByDivisionName(String divisionName) {
        List<District> list= districtRepository.findByDivisionName(divisionName);
        return list.stream().map(this::convertToDto).collect(Collectors.toList());
    }

    private DistrictResponseDto convertToDto(District district){

        return  new DistrictResponseDto(
                district.getId(),
                district.getName(),
                district.getDivision().getId(),
                district.getDivision().getName(),
                district.getDivision().getCountry().getName(),
                district.getDivision().getCountry().getCode(),
                district.getDivision().getCountry().getId()

        );
    }
}
