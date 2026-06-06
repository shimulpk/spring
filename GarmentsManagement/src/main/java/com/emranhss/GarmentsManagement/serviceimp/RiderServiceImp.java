package com.emranhss.GarmentsManagement.serviceimp;

import com.emranhss.GarmentsManagement.entity.Rider;
import com.emranhss.GarmentsManagement.entity.User;
import com.emranhss.GarmentsManagement.repository.RiderRepository;
import com.emranhss.GarmentsManagement.repository.UserRepository;
import com.emranhss.GarmentsManagement.service.RiderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class RiderServiceImp implements RiderService {

    @Autowired
    private RiderRepository riderRepository;

    @Autowired
    private UserRepository userRepository;

    @Value("${image.upload.dir}")
    private String uploadDir;

    @Override
    public Rider save(Rider r, MultipartFile image) {

        if (image != null && !image.isEmpty()) {

            String filename = saveImageForRider(image, r);
            r.setImage(filename);
        }


        User user = new User();

        user.setName(r.getName());
        user.setEmail(r.getEmail());
        user.setPhone(r.getPhone());
        user.setPassword(r.getPassword());
        user.setRole("RIDER");

        User savedUser = userRepository.save(user);

        r.setUser(savedUser);

        return riderRepository.save(r);
    }

    @Override
    public List<Rider> findAll() {
        return List.of();
    }

    @Override
    public Optional<Rider> getById(Integer id) {
        return Optional.empty();
    }

    @Override
    public void delete(Integer id) {

    }

    public String saveImageForRider(MultipartFile file, Rider r) {

        Path uploadPath = Paths.get(uploadDir + "/rider");
        if (!Files.exists(uploadPath)) {
            try {
                Files.createDirectory(uploadPath);

            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        String riderName = r.getName();
        String fileName = riderName.trim().replaceAll("\\s+", "_");

        String savedFileName = fileName + "_" + UUID.randomUUID().toString();

        try {
            Path filePath = uploadPath.resolve(savedFileName);
            Files.copy(file.getInputStream(), filePath);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return savedFileName;

    }
}
