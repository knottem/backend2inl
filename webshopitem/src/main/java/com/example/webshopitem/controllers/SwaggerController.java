package com.example.webshopitem.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SwaggerController {

    @GetMapping("/")
    public String index() {
        return "redirect:swagger-ui.html";
    }
}
