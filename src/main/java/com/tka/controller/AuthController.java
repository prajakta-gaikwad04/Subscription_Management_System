package com.tka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.tka.entity.User;
import com.tka.service.UserService;

@Controller
public class AuthController {

    @Autowired
    private UserService userService;

    
    @GetMapping("/")
    public String indexPage() {
        return "index";
    }
    
    @GetMapping("/home")
    public String homePage() {
        return "home";
    }
    @GetMapping("/register")
    public String registerPage() {
        return "register";
    }

    @PostMapping("/register")
    public String register(User user) {

        userService.register(user);

        return "login";   // go to login.jsp
    }

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String loginUser() {

        return "dashboard";
    }
    
    @GetMapping("/logout")
    public String logout() {

        return "redirect:/login";

    }
}