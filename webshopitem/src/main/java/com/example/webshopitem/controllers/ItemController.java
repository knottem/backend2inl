package com.example.webshopitem.controllers;
import com.example.webshopitem.models.Item;
import com.example.webshopitem.repositories.ItemRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.Collections;
import java.util.List;


@RestController
@Tag(name = "Item Controller", description = "Item Controller API, used to create, get and list items")
public class ItemController {

    private final Logger logger = LoggerFactory.getLogger(ItemController.class);
    private final ItemRepository itemRepository;

    public ItemController(ItemRepository itemRepository) {
        this.itemRepository = itemRepository;
    }

    @GetMapping("/items")
    @Operation(summary = "Get all items", description = "Get all items from the database")
    public List<Item> getAllItems() {
        return itemRepository.findAll();
    }

    @PostMapping("/items")
    @Operation(summary = "Create an item", description = "Create an item in the database")
    public ResponseEntity<Object> createItem(@RequestBody Item item) {
        if (item == null) {
            return new ResponseEntity<>(Collections.singletonMap("error", "Item not found"), HttpStatus.NOT_FOUND);
        } else if (item.getName().isEmpty() || item.getName() == null || item.getPrice() == 0) {
            return new ResponseEntity<>(Collections.singletonMap("error", "Item is empty"), HttpStatus.BAD_REQUEST);
        } else if (itemRepository.findByName(item.getName()).size() > 0) {
            return new ResponseEntity<>(Collections.singletonMap("error", "Item already exists"), HttpStatus.CONFLICT);
        } else {
            itemRepository.save(item);
            logger.info("Item created: " + item.toString());
            return new ResponseEntity<>(item, HttpStatus.CREATED);
        }
    }

    @GetMapping("/items/{id}")
    @Operation(summary = "Get an item by id", description = "Get an item by id from the database")
    public ResponseEntity<Object> getItemById(@PathVariable(required = false) long id) {
        Item item = itemRepository.findById(id).isPresent() ? itemRepository.findById(id).get() : null;
        if (item == null) {
            return new ResponseEntity<>(Collections.singletonMap("error", "Item not found"), HttpStatus.NOT_FOUND);
        } else {
            return new ResponseEntity<>(item, HttpStatus.OK);
        }
    }
}