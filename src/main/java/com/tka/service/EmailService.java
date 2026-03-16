package com.tka.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    @Async
    public void sendReminder(String toEmail, String serviceName, String renewalDate) {

        SimpleMailMessage message = new SimpleMailMessage();

        message.setTo(toEmail);
        message.setSubject("Subscription Renewal Reminder");

        message.setText(
                "Hello,\n\n" +
                "Your subscription for " + serviceName +
                " will renew on " + renewalDate + ".\n\n" +
                "Please ensure payment is available.\n\n" +
                "Thank you,\nSubscription Manager"
        );

        mailSender.send(message);
    }
}