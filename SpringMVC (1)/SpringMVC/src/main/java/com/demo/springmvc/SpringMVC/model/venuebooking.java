package com.demo.springmvc.SpringMVC.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;


@Entity
public class venuebooking {
	@Id
	@Nonnull
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	private String venuename;
	public String getVenuename() {
		return venuename;
	}

	public void setVenuename(String venuename) {
		this.venuename = venuename;
	}

	private String eventname;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Date eventdate; 
	private String cateringtype;
	private int vegcount;
	private int nonvegcount;
	private String services;

	private int foodCost;
	public int getFoodCost() {
		return foodCost;
	}
	public void setFoodCost(int foodCost) {
		this.foodCost = foodCost;
	}
	public int getVenueCost() {
		return venueCost;
	}
	public void setVenueCost(int venueCost) {
		this.venueCost = venueCost;
	}

	private int venueCost;
	

	public int getId() {
		return id;
	}

	public Date getEventdate() {
		return eventdate;
	}

	public void setEventdate(Date eventdate) {
		this.eventdate = eventdate;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEventname() {
		return eventname;
	}

	public void setEventname(String eventname) {
		this.eventname = eventname;
	}

	public String getCateringtype() {
		return cateringtype;
	}

	public void setCateringtype(String cateringtype) {
		this.cateringtype = cateringtype;
	}

	public String getServices() {
		return services;
	}

	public void setServices(String services) {
		this.services = services;
	}

//	public Date getEventdate() {
//		return Eventdate;
//	}
//	public void setEventdate(Date eventdate) {
//		Eventdate = eventdate;
//	}
	public int getVegcount() {
		return vegcount;
	}

	public void setVegcount(int vegcount) {
		this.vegcount = vegcount;
	}

	public int getNonvegcount() {
		return nonvegcount;
	}

	public void setNonvegcount(int nonvegcount) {
		this.nonvegcount = nonvegcount;
	}

	// Many to one B/W booking and user
	@ManyToOne
	@JoinColumn(name = "User_ID")
	private User usr;

	public User getUsr() {
		return usr;
	}

	public void setUsr(User usr) {
		this.usr = usr;
	}

	// Many to one between venuebooking and venue
	@ManyToOne
	@JoinColumn(name = "Venue_ID")
	private venue ven1;

	public venue getVen1() {
		return ven1;
	}

	public void setVen1(venue ven1) {
		this.ven1 = ven1;
	}

}
