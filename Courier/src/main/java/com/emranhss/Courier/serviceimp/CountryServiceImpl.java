package com.emranhss.Courier.serviceimp;

import com.emranhss.Courier.entity.Country;
import com.emranhss.Courier.repository.CountryRepository;
import com.emranhss.Courier.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CountryServiceImpl implements CountryService {

    @Autowired
    private CountryRepository countryRepository;

    @Override
    public Country save(Country c) {
        return countryRepository.save(c);
    }

    @Override
    public List<Country> findAll() {
        return countryRepository.findAll();
    }

    @Override
    public Optional<Country> getById(Long id) {
        return countryRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
    countryRepository.deleteById(id);
    }
}
