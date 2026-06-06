package com.emranhss.GarmentsManagement.service;

import com.emranhss.GarmentsManagement.entity.Rider;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Optional;

@Service
public interface RiderService {
    Rider save(Rider r, MultipartFile image);
    List<Rider> findAll();
    Optional<Rider> getById(Integer id);
    void delete(Integer id);
    }