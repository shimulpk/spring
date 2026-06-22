package com.emranhss.Courier.controller;

import com.emranhss.Courier.dto.response.DistrictResponseDto;
import com.emranhss.Courier.entity.District;
import com.emranhss.Courier.service.DistrictService;
import com.emranhss.Courier.service.DivisionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/district/")
public class DistrictController {

    @Autowired
    private DistrictService districtService;

    @Autowired
    private DivisionService divisionService;

    @PostMapping
    public ResponseEntity<District> save(@RequestBody District d){
        District saveDistrict= districtService.save(d);
        return ResponseEntity.ok(saveDistrict);

    }

    @GetMapping
    public ResponseEntity<List<District>> getAll(){

        List<District> list= districtService.findAll();
        return ResponseEntity.ok(list);
    }

    @GetMapping("{id}")
    public ResponseEntity<List<DistrictResponseDto>> getByDivisionId(@PathVariable Long id){
        List<DistrictResponseDto> list=districtService.findByDivisionId(id);
        return ResponseEntity.ok(list);

    }

    @GetMapping("division/{name}")
    public ResponseEntity<List<DistrictResponseDto>> getByDivisionName(@PathVariable String name){
        List<DistrictResponseDto> list= districtService.findByDivisionName(name);
        return ResponseEntity.ok(list);
    }
}
