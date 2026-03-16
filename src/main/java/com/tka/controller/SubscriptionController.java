package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.tka.entity.Subscription;
import com.tka.repository.SubscriptionRepository;
import com.tka.service.SubscriptionService;

@Controller
@RequestMapping("/subscriptions")
public class SubscriptionController {

    @Autowired
    private SubscriptionRepository subscriptionRepository;

    @Autowired
    private SubscriptionService subscriptionService;

    // Show all subscriptions
    @GetMapping("/list")
    public String listSubscriptions(Model model,
            @RequestParam(required = false) String keyword,
            @RequestParam(required = false) String status) {

        List<Subscription> subscriptions;

        if (keyword != null && !keyword.isEmpty()) {
            subscriptions = subscriptionService.searchByName(keyword);
        } 
        else if (status != null && !status.isEmpty()) {
            subscriptions = subscriptionService.filterByStatus(status);
        } 
        else {
            subscriptions = subscriptionService.getAllSubscriptions();
        }

        model.addAttribute("subscriptions", subscriptions);
        return "subscriptions";
    }
    // Show add form
    @GetMapping("/add")
    public String addForm() {
        return "addSubscription";
    }


    // Save subscription
    @PostMapping("/add")
    public String saveSubscription(@ModelAttribute Subscription sub) {

        subscriptionRepository.save(sub);

        return "redirect:/subscriptions/view";
    }


    // View subscriptions
    @GetMapping("/view")
    public String viewSubscriptions(Model model) {

        List<Subscription> list = subscriptionRepository.findAll();

        model.addAttribute("list", list);

        return "viewSubscriptions";
    }


    // Delete subscription
    @GetMapping("/delete/{id}")
    public String deleteSubscription(@PathVariable Long id) {

        subscriptionRepository.deleteById(id);

        return "redirect:/subscriptions/view";
    }


    // Edit form
    @GetMapping("/edit/{id}")
    public String editSubscription(@PathVariable Long id, Model model) {

        Subscription sub = subscriptionRepository.findById(id).get();

        model.addAttribute("sub", sub);

        return "edit-subscription";
    }


    // Update subscription
    @PostMapping("/update")
    public String updateSubscription(@ModelAttribute Subscription sub) {

        subscriptionRepository.save(sub);

        return "redirect:/subscriptions/view";
    }
    @GetMapping("/upcoming")
    public String upcomingPayments(Model model) {

        List<Subscription> list = subscriptionRepository.findAll();

        model.addAttribute("list", list);

        return "upcomingPayments";
    }
}