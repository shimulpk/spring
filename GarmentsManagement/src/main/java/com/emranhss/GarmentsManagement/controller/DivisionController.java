package com.emranhss.GarmentsManagement.controller;

import com.emranhss.GarmentsManagement.entity.Division;
import com.emranhss.GarmentsManagement.service.DivisionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/division/")
public class DivisionController {

    @Autowired
    private DivisionService divisionService;

    @PostMapping
    public ResponseEntity<Division> save(@RequestBody Division d){
        Division savedDivision =divisionService.save(d);
        return ResponseEntity.ok(savedDivision);
    }

    @GetMapping
    public ResponseEntity<List<Division>> getAll(){
        List<Division> list=divisionService.findAll();
        return ResponseEntity.ok(list);

    }

    //find by country id
    @GetMapping("country/{id}")
    public List<Division> getCountryId(@PathVariable Integer id){
        return  divisionService.getDivisionsByCountryId(id);
    }


    //find by country Name
    @GetMapping("country/name/{name}")
    public List<Division> getCountryName(@PathVariable String name){

        return divisionService.getDivisionsByCountryName(name);
    }

}
