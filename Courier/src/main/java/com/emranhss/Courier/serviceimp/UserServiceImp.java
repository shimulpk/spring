package com.emranhss.Courier.serviceimp;

import com.emranhss.Courier.entity.User;
import com.emranhss.Courier.repository.UserRepository;
import com.emranhss.Courier.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    private UserRepository userRepository;


    @Override
    public User save(User u) {
        return userRepository.save(u);
    }

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public Optional<User> getById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        userRepository.deleteById(id);
    }
}
