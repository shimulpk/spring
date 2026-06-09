package com.emranhss.GarmentsManagement.serviceimp;


import com.emranhss.GarmentsManagement.dto.mapper.RiderMapper;
import com.emranhss.GarmentsManagement.dto.request.RiderRequestDto;
import com.emranhss.GarmentsManagement.dto.response.RiderResponseDto;
import com.emranhss.GarmentsManagement.entity.PoliceStation;
import com.emranhss.GarmentsManagement.entity.Rider;
import com.emranhss.GarmentsManagement.entity.User;
import com.emranhss.GarmentsManagement.repository.PoliceStationRepository;
import com.emranhss.GarmentsManagement.repository.RiderRepository;
import com.emranhss.GarmentsManagement.repository.UserRepository;
import com.emranhss.GarmentsManagement.service.RiderService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RiderServiceImp implements RiderService {

    private final RiderRepository riderRepository;
    private final UserRepository userRepository;
    private final PoliceStationRepository policeStationRepository;

    @Value("D:/Practise spring/spring/")
    private String uploadDir;

    @Transactional
    @Override
    public RiderResponseDto create(RiderRequestDto dto, MultipartFile image) {
        Rider rider = RiderMapper.toEntity(dto);

        // save user first
        User savedUser = userRepository.save(rider.getUser());
        rider.setUser(savedUser);

        // upload image
        if (image != null && !image.isEmpty()) {
            rider.setImage(uploadImage(image, dto.getName()));
        }

        Set<PoliceStation> zones = dto.getZones()
                .stream()
                .map(z -> policeStationRepository.findById(z.getPoliceStationId())
                        .orElseThrow(() ->
                                new RuntimeException("Zone not found: " + z.getPoliceStationId())))
                .collect(Collectors.toSet());

        rider.setZones(zones);

        Rider saved = riderRepository.save(rider);

        return RiderMapper.toDTO(saved);
    }

    @Override
    public List<RiderResponseDto> getAll() {
        return List.of();
    }

    @Override
    public RiderResponseDto getById(Long id) {
        return null;
    }

    @Override
    public void delete(Long id) {

    }
}
