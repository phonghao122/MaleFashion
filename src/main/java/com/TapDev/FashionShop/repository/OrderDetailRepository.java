package com.TapDev.FashionShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.TapDev.FashionShop.domain.OrderDetail;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {

}
