package com.sky.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sky.model.Product;
import com.sky.repo.ProductRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepo;

    @Override
    public Product createProduct(Product product) {
        return productRepo.save(product);
    }

    @Override
    public List<Product> getAllProducts() {
        return productRepo.findAll();
    }

    @Override
    public Product getProductById(int id) {
        return productRepo.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found with id: " + id));
    }

    @Override
    public List<Product> getProductsByCategory(String category) {
        return productRepo.findByCategory(category);
    }

    @Override
    public Product updateProduct(int id, Product product) {
        Product existing = getProductById(id);

        existing.setName(product.getName());
        existing.setCategory(product.getCategory());
        existing.setPrice(product.getPrice());
        existing.setStock(product.getStock());

        return productRepo.save(existing);
    }

    @Override
    public Product updateStock(int id, int stock) {
        Product product = getProductById(id);
        product.setStock(stock);
        return productRepo.save(product);
    }

    @Override
    public void deleteProduct(int id) {
        Product product = getProductById(id);
        productRepo.delete(product);
    }
}