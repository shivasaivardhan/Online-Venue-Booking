package com.demo.springmvc.SpringMVC.service;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.springmvc.SpringMVC.model.User;
import com.demo.springmvc.SpringMVC.model.venuebooking;
import com.demo.springmvc.SpringMVC.rerpository.venuebookingrepository;

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
		List<venuebooking> list=venbookrep.findAll();
		for(venuebooking obj:list)
		{
			System.out.println(obj.getEventname());
		}
		return list;
	}
	
	public List<venuebooking> getuserbookings(int id)
	{
		List<venuebooking> Userlist=new ArrayList<>();
		List<venuebooking> list=venbookrep.findAll();
		for(venuebooking obj:list)
		{
			if(obj.getId()==id)
			{
				Userlist.add(obj);
			}
		}
		return Userlist;
	}
}
