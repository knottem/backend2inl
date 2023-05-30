package com.example.webshoporder.controllers;

import com.example.webshoporder.exception.OrderNotFoundException;
import com.example.webshoporder.models.BuyOrder;
import com.example.webshoporder.models.ErrorResponse;
import com.example.webshoporder.models.Order;
import com.example.webshoporder.services.OrderService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;

@RestController
@Tag(name = "Order Controller", description = "Order API, get all orders, get order by id, buy item")
public class OrderController {

    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/orders")
    @Operation(summary = "Get all orders", description = "Gets all orders and returns them as a list")
    public List<Order> getAllOrders() {
        return orderService.getAllOrders();
    }

    @GetMapping("/ordersitems")
    @Operation(summary = "Get all orders with items", description = "Get all orders with items from item-service as a list")
    public ResponseEntity<Object> getAllOrdersWithItems() {
        return orderService.getAllOrdersWithItems();
    }

    @GetMapping("/orders/{id}")
    @Operation(summary = "Get order by id", description = "Get order by id and returns it")
    public Order getOrderById(@PathVariable long id) {
        return orderService.getOrderById(id);
    }

    @GetMapping("/ordersitems/{id}")
    @Operation(summary = "Get order by id with items", description = "Get order by id with items from item service and returns it")
    public ResponseEntity<Object> getOrderByIdWithItems(@PathVariable long id) {
        return orderService.getOrderByIdWithItems(id);
    }

    @PostMapping("/orders/buy")
    @Operation(summary = "Buy item", description = "Buy item")
    public ResponseEntity<Object> buyItem(@RequestBody BuyOrder buyOrder) {
        return orderService.buyItem(buyOrder);
    }


    // Exception handling for OrderNotFoundException
    @ResponseStatus(HttpStatus.NOT_FOUND)
    @ExceptionHandler(OrderNotFoundException.class)
    public ErrorResponse handleCustomerNotFoundException(OrderNotFoundException exception) {
        ErrorResponse error = new ErrorResponse();
        error.setMessage(exception.getMessage());
        error.setTimestamp(LocalDateTime.now());
        error.setStatus(HttpStatus.NOT_FOUND);
        System.out.println("OrderNotFoundException: " + exception.getMessage());
        return error;
    }
}