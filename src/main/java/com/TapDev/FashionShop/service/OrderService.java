package com.TapDev.FashionShop.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.TapDev.FashionShop.domain.Order;
import com.TapDev.FashionShop.domain.OrderDetail;
import com.TapDev.FashionShop.repository.OrderDetailRepository;
import com.TapDev.FashionShop.repository.OrderRepository;

@Service
public class OrderService {
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;

    public OrderService(
            OrderRepository orderRepository,
            OrderDetailRepository orderDetailRepository) {
        this.orderDetailRepository = orderDetailRepository;
        this.orderRepository = orderRepository;
    }

    public Page<Order> getAllOrders(Pageable pageable) {
        return this.orderRepository.findAll(pageable);
    }

    public Order getOrderById(long id) {
        return this.orderRepository.findById(id);
    }

    public Order handleSaveOrder(Order order) {
        return this.orderRepository.save(order);
    }

    public void handleDeleteOrder(Order order) {
        Order crrOrder = this.getOrderById(order.getId());
        if (crrOrder != null) {
            List<OrderDetail> orderDetails = crrOrder.getOrderDetails();
            for (OrderDetail orderDetail : orderDetails) {
                this.orderDetailRepository.deleteById(orderDetail.getId());
            }
            this.orderRepository.deleteById(crrOrder.getId());
        }

    }
}
