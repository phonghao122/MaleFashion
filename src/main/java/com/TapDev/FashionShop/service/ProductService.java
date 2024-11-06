package com.TapDev.FashionShop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.TapDev.FashionShop.domain.Product;
import com.TapDev.FashionShop.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }

    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }

    public Product getProductById(long id) {
        return this.productRepository.findById(id);
    }

    public void handleDeleteProduct(Product product) {
        this.productRepository.delete(product);
    }

    public List<Product> getProductByStatus(String status) {
        return this.productRepository.findByStatus(status);
    }
}
