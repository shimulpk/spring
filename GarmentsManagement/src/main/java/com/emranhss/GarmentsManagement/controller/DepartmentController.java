package com.emranhss.GarmentsManagement.controller;


import com.emranhss.GarmentsManagement.entity.Department;
import com.emranhss.GarmentsManagement.entity.PoliceStation;
import com.emranhss.GarmentsManagement.service.DepartmentService;
import com.emranhss.GarmentsManagement.service.PoliceStationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/department/")
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;


    @PostMapping
    public ResponseEntity<Department> save(@RequestBody Department d) {

        Department saveDepartment = departmentService.saveOrUpdate(d);
        return new ResponseEntity<>(saveDepartment, HttpStatus.CREATED);
    }

    @GetMapping
    public ResponseEntity<List<Department>> getAll(){
        List<Department> list = departmentService.getAll();
        return ResponseEntity.ok(list);
    }

}
