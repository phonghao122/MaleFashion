package com.TapDev.FashionShop.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.TapDev.FashionShop.domain.Cart;
import com.TapDev.FashionShop.domain.CartDetail;
import com.TapDev.FashionShop.domain.Order;
import com.TapDev.FashionShop.domain.OrderDetail;
import com.TapDev.FashionShop.domain.Product;
import com.TapDev.FashionShop.domain.User;
import com.TapDev.FashionShop.domain.dto.ProductCriteriaDTO;
import com.TapDev.FashionShop.repository.CartDetailRepository;
import com.TapDev.FashionShop.repository.CartRepository;
import com.TapDev.FashionShop.repository.OrderDetailRepository;
import com.TapDev.FashionShop.repository.OrderRepository;
import com.TapDev.FashionShop.repository.ProductRepository;
import com.TapDev.FashionShop.service.specification.ProductSpecs;

import jakarta.servlet.http.HttpSession;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final CartRepository cartRepository;
    private final UserService userService;
    private final CartDetailRepository cartDetailRepository;
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;

    public ProductService(ProductRepository productRepository,
            CartRepository cartRepository,
            UserService userService,
            CartDetailRepository cartDetailRepository,
            OrderRepository orderRepository,
            OrderDetailRepository orderDetailRepository) {
        this.productRepository = productRepository;
        this.cartRepository = cartRepository;
        this.userService = userService;
        this.cartDetailRepository = cartDetailRepository;
        this.orderRepository = orderRepository;
        this.orderDetailRepository = orderDetailRepository;
    }

    public Page<Product> getAllProducts(Pageable pageable) {
        return this.productRepository.findAll(pageable);
    }

    public Page<Product> getAllProductsWithSpec(Pageable pageable, ProductCriteriaDTO productCriteriaDTO) {
        if (productCriteriaDTO.getBrand() == null
                && productCriteriaDTO.getCategory() == null
                && productCriteriaDTO.getColor() == null
                && productCriteriaDTO.getPrice() == null
                && productCriteriaDTO.getSize() == null) {
            return this.productRepository.findAll(pageable);
        }

        Specification<Product> combinedSpec = Specification.where(null);

        if (productCriteriaDTO.getCategory() != null && productCriteriaDTO.getCategory().isPresent()) {
            Specification<Product> currentSpecs = ProductSpecs.matchCategory(productCriteriaDTO.getCategory().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }

        if (productCriteriaDTO.getBrand() != null && productCriteriaDTO.getBrand().isPresent()) {
            Specification<Product> currentSpecs = ProductSpecs.matchBrand(productCriteriaDTO.getBrand().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }

        if (productCriteriaDTO.getSize() != null && productCriteriaDTO.getSize().isPresent()) {
            Specification<Product> currentSpecs = ProductSpecs.matchSize(productCriteriaDTO.getSize().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }

        if (productCriteriaDTO.getColor() != null && productCriteriaDTO.getColor().isPresent()) {
            Specification<Product> currentSpecs = ProductSpecs.matchColor(productCriteriaDTO.getColor().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }

        if (productCriteriaDTO.getPrice() != null && productCriteriaDTO.getPrice().isPresent()) {
            Specification<Product> currentSpecs = this.buildPriceSpecification(productCriteriaDTO.getPrice().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }

        return this.productRepository.findAll(combinedSpec, pageable);
    }

    public Specification<Product> buildPriceSpecification(List<String> price) {
        Specification<Product> combinedSpec = Specification.where(null); // disconjunction
        for (String p : price) {
            double min = 0;
            double max = 0;

            // Set the appropriate min and max based on the price range string
            switch (p) {
                case "$0-$100":
                    min = 1;
                    max = 100;
                    break;
                case "$100-$500":
                    min = 100;
                    max = 500;
                    break;
                case "$500-$1000":
                    min = 500;
                    max = 1000;
                    break;
                case "$1000+":
                    min = 1000;
                    max = 200000000;
                    break;
            }

            if (min != 0 && max != 0) {
                Specification<Product> rangeSpec = ProductSpecs.matchMultiplePrice(min, max);
                combinedSpec = combinedSpec.or(rangeSpec);
            }
        }

        return combinedSpec;
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

    public Cart getCartByUser(User user) {
        return this.cartRepository.findByUser(user);
    }

    public void handleAddProductToCart(String email, long productId, HttpSession session, long quantity) {
        User user = this.userService.getUserByEmail(email);
        if (user != null) {
            Cart cart = this.getCartByUser(user);
            if (cart == null) {
                Cart crrCart = new Cart();
                crrCart.setSum(0);
                crrCart.setUser(user);
                cart = this.cartRepository.save(crrCart);
            }

            Optional<Product> prOptional = Optional.ofNullable(this.productRepository.findById(productId));
            if (prOptional.isPresent()) {
                Product product = prOptional.get();

                CartDetail cartDetail = cartDetailRepository.findByCartAndProduct(cart, product);
                if (cartDetail == null) {
                    CartDetail cd = new CartDetail();
                    cd.setCart(cart);
                    cd.setProduct(product);
                    cd.setPrice(product.getPrice());
                    cd.setQuantity(quantity);
                    this.cartDetailRepository.save(cd);

                    int s = cart.getSum() + 1;
                    cart.setSum(s);
                    this.cartRepository.save(cart);
                    session.setAttribute("sum", s);
                } else {
                    cartDetail.setQuantity(cartDetail.getQuantity() + quantity);
                    this.cartDetailRepository.save(cartDetail);
                }
            }
        }
    }

    public void handlePlaceOrder(User user, Order order, HttpSession session) {
        Cart cart = this.getCartByUser(user);
        if (cart != null) {
            List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
            double totalPrice = 0;
            for (CartDetail cartDetail : cartDetails) {
                totalPrice += cartDetail.getPrice() * cartDetail.getQuantity();
            }
            order.setTotalPrice(totalPrice);
            order.setStatus("PENDING");
            order.setUser(user);
            order = this.orderRepository.save(order);

            // create orderDetail
            for (CartDetail cartDetail : cartDetails) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setPrice(cartDetail.getPrice());
                orderDetail.setQuantity(cartDetail.getQuantity());
                orderDetail.setProduct(cartDetail.getProduct());
                orderDetail.setOrder(order);
                this.orderDetailRepository.save(orderDetail);
            }

            // delete cart and cartDetail
            for (CartDetail cartDetail : cartDetails) {
                this.cartDetailRepository.deleteById(cartDetail.getId());
            }

            this.cartRepository.deleteById(cart.getId());

            // update session sum
            session.setAttribute("sum", 0);
        }
    }

    public void handleDeleteProductToCart(User user, long cartDetailId, HttpSession session) {
        Cart cart = this.getCartByUser(user);
        if (cart != null) {
            CartDetail cartDetail = this.cartDetailRepository.findById(cartDetailId);
            if (cartDetail != null) {
                this.cartDetailRepository.delete(cartDetail);

                if (cart.getSum() == 1) {
                    // update session
                    int s = cart.getSum() - 1;
                    session.setAttribute("sum", s);
                    this.cartRepository.delete(cart);
                }
                if (cart.getSum() > 1) {
                    // update session
                    int s = cart.getSum() - 1;
                    session.setAttribute("sum", s);
                    cart.setSum(s);
                    this.cartRepository.save(cart);
                }

            }
        }
    }

    public void handleUpdateCartBeforeCheckout(List<CartDetail> cartDetails) {
        for (CartDetail cartDetail : cartDetails) {
            CartDetail cd = this.cartDetailRepository.findById(cartDetail.getId());
            if (cd != null) {
                cd.setQuantity(cartDetail.getQuantity());
                this.cartDetailRepository.save(cd);
            }
        }
    }
}
