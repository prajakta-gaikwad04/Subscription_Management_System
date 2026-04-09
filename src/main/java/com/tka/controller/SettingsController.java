package com.tka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.tka.entity.User;
import com.tka.repository.UserRepository;

@Controller
@RequestMapping("/settings")
public class SettingsController {

    @Autowired
    private UserRepository userRepository;


    
    @GetMapping
    public String openSettings(Model model) {

        User user = userRepository.findById(1).get(); // demo user

        model.addAttribute("user", user);

        return "settings";
    }


   
    @PostMapping("/update")
    public String updateSettings(@ModelAttribute User user) {

        userRepository.save(user);

        return "redirect:/dashboard";
    }

}