package com.tka.scheduler;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.tka.entity.Subscription;
import com.tka.repository.SubscriptionRepository;
import com.tka.service.EmailService;

@Component
public class ReminderScheduler {

    @Autowired
    private SubscriptionRepository subscriptionRepository;

    @Autowired
    private EmailService emailService;

    @Scheduled(cron = "0 0 9 * * ?") 
    public void checkUpcomingPayments() {

        LocalDate today = LocalDate.now();

        List<Subscription> list = subscriptionRepository.findAll();

        for (Subscription sub : list) {

            LocalDate renewalDate = sub.getRenewalDate();

            long daysLeft = ChronoUnit.DAYS.between(today, renewalDate);

            if (daysLeft == 7 || daysLeft == 3 || daysLeft == 1) {

                emailService.sendReminder(
                        sub.getUser().getEmail(),
                        sub.getServiceName(),
                        renewalDate.toString()
                );
            }
        }
    }
}