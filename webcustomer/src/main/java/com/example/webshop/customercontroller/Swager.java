package com.example.webshop.customercontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Swager {
    @GetMapping({"","/"})
    public String index() {

        return "redirect:/swagger-ui/index.html";
    }
}
