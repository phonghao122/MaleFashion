package com.TapDev.FashionShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.TapDev.FashionShop.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findById(long id);

    boolean existsByEmail(String email);

    User findByEmail(String email);
}
