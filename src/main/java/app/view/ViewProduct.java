package app.view;

import app.products.model.Category;
import app.products.model.Product;
import app.products.repository.ProductRepository;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;
import java.util.List;

@Component
public class ViewProduct {

    private final ProductRepository productRepository;

    public ViewProduct(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void start() {
        List<Product> products = productRepository.findAll();
        System.out.println("Produse: " + products.size());
        System.out.println("Stoc total: " + products.stream().mapToInt(Product::getStock).sum());
        System.out.println("Valoare stoc: " + products.stream()
                .map(p -> p.getPrice().multiply(BigDecimal.valueOf(p.getStock())))
                .reduce(BigDecimal.ZERO, BigDecimal::add));
        for (Category category : Category.values()) {
            System.out.println(category + ": " + products.stream().filter(p -> p.getCategory() == category).count());
        }
        System.out.println("Active: " + products.stream().filter(Product::isActive).count());
    }
}
