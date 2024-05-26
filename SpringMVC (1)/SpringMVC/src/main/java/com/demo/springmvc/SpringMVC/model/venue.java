package com.demo.springmvc.SpringMVC.model;

import java.util.List;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class venue 
{
	@Id
	@Nonnull
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	private String name;
	private String address;
	private String ownername;
	private String description;
	private String imgname;
	private int  price;
	private int vegprice;
	private int nonvegprice;
	private String addiservices;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOwnername() {
		return ownername;
	}
	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getVegprice() {
		return vegprice;
	}
	public void setVegprice(int vegprice) {
		this.vegprice = vegprice;
	}
	public int getNonvegprice() {
		return nonvegprice;
	}
	public void setNonvegprice(int nonvegprice) {
		this.nonvegprice = nonvegprice;
	}
	
	public String getAddiservices() {
		return addiservices;
	}
	public void setAddiservices(String addiservices) {
		this.addiservices = addiservices;
	}

	//one to many between venue and venuebookings
	@OneToMany(mappedBy = "ven1")
	private List<venuebooking> venbookings;
	public List<venuebooking> getBookings() 
	{
		return venbookings;
	}
	public void setBookings(List<venuebooking> venbookings) 
	{
		this.venbookings = venbookings;
	}
	
	
	
	
}
