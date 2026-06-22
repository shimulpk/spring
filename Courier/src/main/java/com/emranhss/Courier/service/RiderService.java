package com.emranhss.Courier.service;

import com.emranhss.Courier.dto.request.RiderRequestDto;
import com.emranhss.Courier.dto.response.RiderResponseDto;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public interface RiderService {
    RiderResponseDto create(RiderRequestDto dto, MultipartFile image);

    List<RiderResponseDto> getAll();

    RiderResponseDto getById(Long id);

    void delete(Long id);
    }