package com.demo.springmvc.SpringMVC.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.springmvc.SpringMVC.model.venue;
import com.demo.springmvc.SpringMVC.rerpository.VenueRepository;


@Service
public class VenueService
{
	@Autowired
	VenueRepository venrepo;
	public void  savevenue (venue obj1)
	{
		venrepo.save(obj1);
	}
	
	public List<venue> showvenues()
	{
		List<venue> mylist=venrepo.getallvenues();
		return mylist;
	}
	
	public void deletevenue(int vid)
	{
		venrepo.deleteById(vid);
	}
	public venue findvenue(int id)
	{
		venue obj1=venrepo.findById(id).get();
		return obj1;
	}
	
	public void update(venue obj)
	{
		venrepo.save(obj);
	}
	
	public venue returnvenue(String vname)
	{
		venue obj=venrepo.getvenue(vname);
		return obj;
	}
	
	public long venount()
	{
		return venrepo.count();
	}
	
		
	
}
