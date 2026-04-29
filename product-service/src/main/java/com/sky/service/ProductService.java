package com.sky.service;

import java.util.List;

import com.sky.model.Product;

public interface ProductService {

    Product createProduct(Product product);

    List<Product> getAllProducts();

    Product getProductById(int id);

    List<Product> getProductsByCategory(String category);

    Product updateProduct(int id, Product product);

    Product updateStock(int id, int stock);

    void deleteProduct(int id);
}