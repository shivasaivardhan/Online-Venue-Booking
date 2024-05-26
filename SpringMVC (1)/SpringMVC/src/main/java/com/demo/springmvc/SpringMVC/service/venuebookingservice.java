package com.demo.springmvc.SpringMVC.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.springmvc.SpringMVC.model.User;
import com.demo.springmvc.SpringMVC.model.venuebooking;
import com.demo.springmvc.SpringMVC.rerpository.venuebookingrepository;

import jakarta.transaction.Transactional;

@Service
public class venuebookingservice 
{
	@Autowired
	venuebookingrepository venbookrep;
//	@Autowired
//	User cus;
	
	public void setvenbook(venuebooking obj1)
	{
		//cus.addVenueBooking(obj1);
		venbookrep.save(obj1);
	}
	
	public List<venuebooking> getallbookings()
	{
		List<venuebooking> list=venbookrep.fetchallbookings();
		
		return list;
	}
	
	public List<venuebooking> getuserbookings(int id)
	{
		List<venuebooking> Userlist=venbookrep.getuserbookings(id);
		
		return Userlist;
	}
	
	public venuebooking checkbooking(int id,Date dt1)
	{
		venuebooking ven =venbookrep.checkbooking(id, dt1);
		return ven;
	}
	
	@Transactional
	public void deletebookings(int vID)
	{
		venbookrep.deleteByVen1Id(vID);
	}
	
	public venuebooking findbooking(int uID,int bkID)
	{
		return venbookrep.checkvenbooking(uID, bkID);
	}
	
	 public long bookcount()
	 {
		 return venbookrep.count();
	 }
	
}
