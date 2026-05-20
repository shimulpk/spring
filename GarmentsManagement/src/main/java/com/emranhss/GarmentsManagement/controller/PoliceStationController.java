package com.emranhss.GarmentsManagement.controller;

import com.emranhss.GarmentsManagement.entity.PoliceStation;
import com.emranhss.GarmentsManagement.service.PoliceStationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/policeStation/")
public class PoliceStationController {

    @Autowired
    private PoliceStationService policeStationService;

    public ResponseEntity<PoliceStation> save(@RequestBody PoliceStation pk) {

        PoliceStation savedPoliceStation = policeStationService.saveOrUpdate(pk);
        return new ResponseEntity<>(savedPoliceStation, HttpStatus.CREATED);
    }


    @GetMapping
    public ResponseEntity<List<PoliceStation>> getAll(){
        List<PoliceStation> list = policeStationService.getAll();
        return ResponseEntity.ok(list);
    }
}

