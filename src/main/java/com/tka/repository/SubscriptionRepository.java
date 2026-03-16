package com.tka.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tka.entity.Subscription;

public interface SubscriptionRepository extends JpaRepository<Subscription, Long>{

    List<Subscription> findByUserId(int userId);

    List<Subscription> findByRenewalDateBetween(LocalDate start, LocalDate end);
    List<Subscription> findByServiceNameContaining(String keyword);

    List<Subscription> findByStatus(String status);
}