package com.TapDev.FashionShop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.TapDev.FashionShop.domain.Role;
import com.TapDev.FashionShop.domain.User;
import com.TapDev.FashionShop.repository.RoleRepository;
import com.TapDev.FashionShop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void handleDeleteUser(User user) {
        this.userRepository.delete(user);
    }
}
