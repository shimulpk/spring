package com.emranhss.GarmentsManagement.controller;


import com.emranhss.GarmentsManagement.entity.Country;
import com.emranhss.GarmentsManagement.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/country/")
public class CountryController {

    @Autowired

    private CountryService countryService;

    @PostMapping
    public ResponseEntity<Country> save(@RequestBody Country c){
        Country savedCountry= countryService.save(c);

        return new ResponseEntity<>(savedCountry, HttpStatus.CREATED);
    }



    @GetMapping
    public ResponseEntity<List<Country>> getAll(){
        List<Country> list=countryService.findAll();
        return ResponseEntity.ok(list);
    }


  @GetMapping("{id}")
    public ResponseEntity<Country> findById(@PathVariable Long id){

        Country c =countryService.getById(id)
                .orElseThrow(()-> new RuntimeException("Country not found with this id") );
        return ResponseEntity.ok(c);

  }

  @DeleteMapping("{id}")
    public ResponseEntity<String> delete(@PathVariable Long id){
        countryService.delete(id);
      return ResponseEntity.ok("Data Deleted");
  }

  @PutMapping("{id}")
    public ResponseEntity<Country> update(@PathVariable Long id,@RequestBody Country c){
        c.setId(id);
        Country updatedCountry=countryService.save(c);
      return ResponseEntity.ok(updatedCountry);

  }

}
