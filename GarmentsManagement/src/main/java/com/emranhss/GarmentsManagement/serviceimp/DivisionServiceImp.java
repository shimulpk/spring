package com.emranhss.GarmentsManagement.serviceimp;


import com.emranhss.GarmentsManagement.entity.Country;
import com.emranhss.GarmentsManagement.entity.Division;
import com.emranhss.GarmentsManagement.repository.CountryRepository;
import com.emranhss.GarmentsManagement.repository.DivisionRepository;
import com.emranhss.GarmentsManagement.service.DivisionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DivisionServiceImp implements DivisionService {

    @Autowired
    private DivisionRepository divisionRepository;

    @Autowired
    private CountryRepository countryRepository;

    @Override
    public Division save(Division d) {
        Integer countryId= d.getCountry().getId();
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
    public Optional<Division> getById(Integer id) {
        return divisionRepository.findById(id);
    }

    @Override
    public void delete(Integer id) {
    divisionRepository.deleteById(id);
    }

    @Override
    public List<Division> getDivisionsByCountryId(Integer countryId) {
        return divisionRepository.findByCountryId(countryId);
    }

    @Override
    public List<Division> getDivisionsByCountryName(String countryName) {
        return divisionRepository.findByCountryName(countryName);
    }


}
