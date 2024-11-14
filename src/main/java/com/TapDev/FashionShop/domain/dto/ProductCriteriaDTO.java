package com.TapDev.FashionShop.domain.dto;

import java.util.List;
import java.util.Optional;

public class ProductCriteriaDTO {
    private Optional<String> page;
    private Optional<List<String>> category;
    private Optional<List<String>> brand;
    private Optional<List<String>> price;
    private Optional<List<String>> size;
    private Optional<List<String>> color;
    private Optional<String> sort;

    public Optional<String> getPage() {
        return page;
    }

    public void setPage(Optional<String> page) {
        this.page = page;
    }

    public Optional<List<String>> getCategory() {
        return category;
    }

    public void setCategory(Optional<List<String>> category) {
        this.category = category;
    }

    public Optional<List<String>> getBrand() {
        return brand;
    }

    public void setBrand(Optional<List<String>> brand) {
        this.brand = brand;
    }

    public Optional<List<String>> getPrice() {
        return price;
    }

    public void setPrice(Optional<List<String>> price) {
        this.price = price;
    }

    public Optional<List<String>> getSize() {
        return size;
    }

    public void setSize(Optional<List<String>> size) {
        this.size = size;
    }

    public Optional<List<String>> getColor() {
        return color;
    }

    public void setColor(Optional<List<String>> color) {
        this.color = color;
    }

    public Optional<String> getSort() {
        return sort;
    }

    public void setSort(Optional<String> sort) {
        this.sort = sort;
    }

}
