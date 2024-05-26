package com.demo.springmvc.SpringMVC.model;

import java.util.List;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

import java.util.*;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
@Entity
@Table(name="user_info")
public class User {
	
	@Id
	@Nonnull
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	@Nonnull
	private String username;
	@Nonnull
	private String password;
	@Nonnull
	private String name;
	@Nonnull
	private String mobile;
	@Nonnull
	private String address;
	@Nonnull
	private String email;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


	//one to many relation B/W user and feedback
	@OneToMany(mappedBy="usr")
	private List<Feedback> feedbacks;
	
	public List<Feedback> getFeedbacks() 
	{
		return feedbacks;
	}
	
	public void setFeedbacks(List<Feedback> feedbacks)
	{
		this.feedbacks = feedbacks;
	}
	
	//one to many relation B/W user and venuebooking
	@OneToMany(mappedBy = "usr")
	private List<venuebooking> bookings;

	public List<venuebooking> getBookings() {
		return bookings;
	}
	public void setBookings(List<venuebooking> bookings) {
		this.bookings = bookings;
	}
	//Binding
//	public void addVenueBooking(venuebooking vb) {
//		if(vb!=null) {
//			if(bookings==null) {
//				bookings=new ArrayList<>();
//			}
//			vb.setUsr(this);
//			bookings.add(vb);
//		}
//	}
	
}
