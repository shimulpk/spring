package com.emranhss.GarmentsManagement.service;

import com.emranhss.GarmentsManagement.dto.request.RiderRequestDto;
import com.emranhss.GarmentsManagement.dto.response.RiderResponseDto;
import com.emranhss.GarmentsManagement.entity.Rider;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Optional;

@Service
public interface RiderService {
    RiderResponseDto create(RiderRequestDto dto, MultipartFile image);

    List<RiderResponseDto> getAll();

    RiderResponseDto getById(Long id);

    void delete(Long id);
    }