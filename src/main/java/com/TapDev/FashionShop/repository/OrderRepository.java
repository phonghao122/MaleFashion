package com.TapDev.FashionShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.TapDev.FashionShop.domain.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
    Order findById(long id);
}
