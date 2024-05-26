package com.demo.springmvc.SpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.springmvc.SpringMVC.model.Feedback;
import com.demo.springmvc.SpringMVC.rerpository.FeedbackRepository;

@Service
public class FeedbackService
{
	@Autowired
	FeedbackRepository feedrepo;
	
	public void savefeedback(Feedback obj1)
	{
		
		feedrepo.save(obj1);
	}
	

	 public List<Feedback> getAllfeeds()
	 
	 {
		 List<Feedback> allfeeds=feedrepo.fetchfeeds();
		return allfeeds;
	}
	 
	 public long fcount()
	 {
		 return feedrepo.count();
	 }

}
