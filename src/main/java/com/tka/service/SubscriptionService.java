package com.tka.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.entity.Subscription;
import com.tka.repository.SubscriptionRepository;

@Service
public class SubscriptionService {

    @Autowired
    private SubscriptionRepository repository;

    public Subscription addSubscription(Subscription sub) {
        return repository.save(sub);
    }

    public List<Subscription> getAllSubscriptions() {
        return repository.findAll();
    }

    public void deleteSubscription(Long id) {
        repository.deleteById(id);
    }
    
    public List<Subscription> getUpcomingSubscriptions(){

        LocalDate today = LocalDate.now();
        LocalDate nextWeek = today.plusDays(7);

        return repository.findByRenewalDateBetween(today, nextWeek);
    }
    public List<Subscription> searchByName(String keyword){
        return repository.findByServiceNameContaining(keyword);
    }

    public List<Subscription> filterByStatus(String status){
        return repository.findByStatus(status);
    }
}