package com.demo.springmvc.SpringMVC.Dto;

import com.demo.springmvc.SpringMVC.model.User;

import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

public class FeedbackDto
{
	@Id
	//@Column(name="bdh")
	private int id;
	private String msg;
	private String date_1;
	private int book_id;
	
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getDate_1() {
		return date_1;
	}
	public void setDate_1(String date_1) {
		this.date_1 = date_1;
	}

	
}
