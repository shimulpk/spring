package com.emranhss.GarmentsManagement.service;

import com.emranhss.GarmentsManagement.entity.Department;
import com.emranhss.GarmentsManagement.repository.DepartmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.yaml.snakeyaml.events.Event;

import java.util.List;
import java.util.Optional;

@Service
public class DepartmentService {

    @Autowired
    private DepartmentRepository departmentRepository;

    public List<Department> getAll(){
        return departmentRepository.findAll();
    }

    public Department saveOrUpdate(Department d){
        return departmentRepository.save(d);
    }


    public Optional<Department> getByID(Long id){
        return departmentRepository.findById(id);
    }

    public void delete(Long id){
        departmentRepository.deleteById(id);
    }

}
