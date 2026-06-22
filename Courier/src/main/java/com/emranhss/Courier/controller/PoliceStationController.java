package com.emranhss.Courier.controller;

import com.emranhss.Courier.entity.PoliceStation;
import com.emranhss.Courier.service.PoliceStationService;
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

    @PostMapping
    public ResponseEntity<PoliceStation> save(@RequestBody PoliceStation pk) {

        PoliceStation savedPoliceStation = policeStationService.saveOrUpdate(pk);
        return new ResponseEntity<>(savedPoliceStation, HttpStatus.CREATED);
    }


    @GetMapping
    public ResponseEntity<List<PoliceStation>> getAll(){
        List<PoliceStation> list = policeStationService.getAll();
        return ResponseEntity.ok(list);
    }

    @GetMapping("{id}")
    public ResponseEntity<PoliceStation> getById(@PathVariable Long id ){
        PoliceStation policeStation=policeStationService.getById(id).
                orElseThrow(() -> new RuntimeException("Police station not found"));

        return ResponseEntity.ok(policeStation);

    }

    @DeleteMapping("{id}")
    public ResponseEntity<String> deleteById(@PathVariable Long id){

    policeStationService.delete(id);
    return ResponseEntity.ok("police station deleted successfully");
    }

    @PutMapping("/{id}")

    public ResponseEntity<PoliceStation> update(@PathVariable
       Long id, @RequestBody PoliceStation policeStation){

        policeStation.setId(id);

        PoliceStation updatePoliceStation=policeStationService.saveOrUpdate(policeStation);
        return ResponseEntity.ok(updatePoliceStation);

    }


}

