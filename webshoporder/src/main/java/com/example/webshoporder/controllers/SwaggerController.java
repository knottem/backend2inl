package com.example.webshoporder.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SwaggerController {

    // Redirects to Swagger UI, so that the user can easily test the API
    @GetMapping("/")
    public String index() {
        return "redirect:/swagger-ui/index.html";
    }
}
