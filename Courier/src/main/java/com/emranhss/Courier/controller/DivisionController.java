package com.emranhss.Courier.controller;

import com.emranhss.Courier.dto.DivisionDto;
import com.emranhss.Courier.entity.Division;
import com.emranhss.Courier.service.DivisionService;
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
    public List<DivisionDto> getCountryId(@PathVariable Long id){
        return  divisionService.getDivisionsByCountryId(id);
    }


    //find by country Name
    @GetMapping("country/name/{name}")
    public List<DivisionDto> getCountryName(@PathVariable String name){

        return divisionService.getDivisionsByCountryName(name);
    }

}
