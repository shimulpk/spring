package com.emranhss.GarmentsManagement.serviceimp;


import com.emranhss.GarmentsManagement.dto.DivisionDto;
import com.emranhss.GarmentsManagement.entity.Country;
import com.emranhss.GarmentsManagement.entity.Division;
import com.emranhss.GarmentsManagement.repository.CountryRepository;
import com.emranhss.GarmentsManagement.repository.DivisionRepository;
import com.emranhss.GarmentsManagement.service.DivisionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class DivisionServiceImp implements DivisionService {

    @Autowired
    private DivisionRepository divisionRepository;

    @Autowired
    private CountryRepository countryRepository;

    @Override
    public Division save(Division d) {
        Long countryId= d.getCountry().getId();
        Country c = countryRepository.findById(countryId)
                .orElseThrow(()-> new RuntimeException("Country Not Found with this id"));

        d.setCountry(c);

        return divisionRepository.save(d);
    }

    @Override
    public List<Division> findAll() {
        return divisionRepository.findAll();
    }

    @Override
    public Optional<Division> getById(Long id) {
        return divisionRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
    divisionRepository.deleteById(id);
    }

    @Override
    public List<DivisionDto> getDivisionsByCountryId(Long countryId) {
        List<Division> list = divisionRepository.findByCountryId(countryId);
        return list.stream().map(this::convertToDto).collect(Collectors.toList());
    }

    @Override
    public List<DivisionDto> getDivisionsByCountryName(String countryName) {
        List<Division> list = divisionRepository.findByCountryName(countryName);
        return  list.stream().map(this::convertToDto).collect(Collectors.toList());
    }


    private  DivisionDto convertToDto(Division division){

        return  new DivisionDto(
                division.getId(),
                division.getName(),
                division.getCountry().getName(),
                division.getCountry().getId()

        );
    }


}
