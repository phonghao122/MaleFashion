package com.TapDev.FashionShop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.TapDev.FashionShop.domain.Cart;
import com.TapDev.FashionShop.domain.CartDetail;
import com.TapDev.FashionShop.domain.Product;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {
    CartDetail findByCartAndProduct(Cart cart, Product product);

    CartDetail findById(long id);
}
