package com.tka.entity;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name="subscriptions")
public class Subscription {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String serviceName;
    private double amount;
    private LocalDate renewalDate;
    private String status;
    @ManyToOne
    private User user;

	public Subscription() {
		super();
	}


	public Subscription(Long id, String serviceName, double amount, LocalDate renewalDate, String status, User user) {
		super();
		this.id = id;
		this.serviceName = serviceName;
		this.amount = amount;
		this.renewalDate = renewalDate;
		this.status = status;
		this.user = user;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public LocalDate getRenewalDate() {
		return renewalDate;
	}

	public void setRenewalDate(LocalDate renewalDate) {
		this.renewalDate = renewalDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "Subscription [id=" + id + ", serviceName=" + serviceName + ", amount=" + amount + ", renewalDate="
				+ renewalDate + ", status=" + status + ", user=" + user + "]";
	}


	

   
}