package com.TapDev.FashionShop.service.specification;

import java.util.List;

import org.springframework.data.jpa.domain.Specification;

import com.TapDev.FashionShop.domain.Product;
import com.TapDev.FashionShop.domain.Product_;

public class ProductSpecs {

    public static Specification<Product> matchCategory(List<String> category) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Product_.CATEGORY)).value(category);
    }

    public static Specification<Product> matchBrand(List<String> brand) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Product_.BRAND)).value(brand);
    }

    public static Specification<Product> matchColor(List<String> color) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Product_.COLOR)).value(color);
    }

    public static Specification<Product> matchSize(List<String> size) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Product_.SIZE)).value(size);
    }

    public static Specification<Product> matchMultiplePrice(double min, double max) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.between(
                root.get(Product_.PRICE), min, max);
    }
}
