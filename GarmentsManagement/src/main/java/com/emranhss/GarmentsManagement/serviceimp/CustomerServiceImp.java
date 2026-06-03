package com.emranhss.GarmentsManagement.serviceimp;

import com.emranhss.GarmentsManagement.entity.Customer;
import com.emranhss.GarmentsManagement.repository.CustomerRepository;
import com.emranhss.GarmentsManagement.repository.UserRepository;
import com.emranhss.GarmentsManagement.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerServiceImp implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private UserRepository userRepository;

    @Value("D:/Practise spring/spring/assets/")
    private String uploadDir;


    @Override
    public Customer save(Customer c, MultipartFile imageFile) {
        if (imageFile != null && !imageFile.isEmpty()) {
            // Save image for both User and JobSeeker
            String filename = saveImageForCustomer(imageFile, c);
            c.setImage(filename);
    }

    @Override
    public List<Customer> findAll() {
        return List.of();
    }

    @Override
    public Optional<Customer> getById(Long id) {
        return Optional.empty();
    }

    @Override
    public void delete(Long id) {

    }
}
