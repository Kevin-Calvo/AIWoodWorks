package com.AIWoodWorks.backend.service;

import org.springframework.stereotype.Service;

import com.AIWoodWorks.backend.model.Usuario;
import com.AIWoodWorks.backend.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void createUser(Usuario user) {
        userRepository.save(user);
    }

    public Usuario getUserById(Long userId) {
        return userRepository.findById(userId);
    }
}