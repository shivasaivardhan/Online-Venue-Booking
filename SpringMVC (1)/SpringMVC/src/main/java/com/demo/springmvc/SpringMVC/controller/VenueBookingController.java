package com.demo.springmvc.SpringMVC.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.springmvc.SpringMVC.Dto.FeedbackDto;
import com.demo.springmvc.SpringMVC.exeption.DateNotAvaliableException;
import com.demo.springmvc.SpringMVC.exeption.SessExpireException;
import com.demo.springmvc.SpringMVC.exeption.VenueNameException;
import com.demo.springmvc.SpringMVC.model.Feedback;
import com.demo.springmvc.SpringMVC.model.User;
import com.demo.springmvc.SpringMVC.model.venue;
import com.demo.springmvc.SpringMVC.model.venuebooking;
import com.demo.springmvc.SpringMVC.service.VenueService;
import com.demo.springmvc.SpringMVC.service.venuebookingservice;

import jakarta.servlet.http.HttpSession;
@Controller
public class VenueBookingController 
{
	@Autowired
	venuebookingservice venbookservc;
	@Autowired
	VenueService venserv;
	
	
	@GetMapping("bookvenue")
	public String bookselectedvenue(@ModelAttribute("selectvenue") venuebooking venbook)
	{
		return "bookvenue";
	}
	
	@PostMapping("conformvenue")//manual fill forn
	public String confromvenue(@ModelAttribute("selectvenue") venuebooking venbook,RedirectAttributes model,HttpSession session)
	{
		User uObj=(User)session.getAttribute("UserObj");
		//System.out.println(uObj);
//		if(uObj==null)
//		{
//			throw new SessExpireException();//implement null exception for user SESSION
//		}
		
		venbook.setUsr(uObj);
		venue venobj=venserv.returnvenue(venbook.getVenuename());
		if(venobj==null)
		{
			throw new VenueNameException();//implementing null exception for venue nanme
		}
		venbook.setVen1(venobj);
		venuebooking myobject= venbookservc.checkbooking(venbook.getVen1().getId(), venbook.getEventdate());
		if(myobject!=null)//checking for venue clash on given date
		{
			throw new DateNotAvaliableException();
			
//			model.addFlashAttribute("msg", "Venue not avaliable on the given date");
//			return "redirect:/bookvenue";
		}
		venbook.setVenueCost(venobj.getPrice());
		int total= venbook.getVegcount()*venobj.getVegprice()+venbook.getNonvegcount()*venobj.getNonvegprice();
		venbook.setFoodCost(total);
		venbookservc.setvenbook(venbook);					//save booking in service
		model.addFlashAttribute("msg", "Venue Booked Successfully.\nYou will receive conformation in few hours.");
		return "redirect:/userbookings";
	}
	

	@GetMapping("userbookings")//getting bookings of a particular user
	public String displayuserbookings(Model model,HttpSession session)
	{
		int u_id=((User)session.getAttribute("UserObj")).getId();
		List <venuebooking> mylist=venbookservc.getuserbookings(u_id);
		model.addAttribute("bookingslist", mylist);
		return "userbookings";
	}
	
//	@PostMapping("savebooking")
//	public String finalbooking(@ModelAttribute("finalbooking") venuebooking venbook,RedirectAttributes model,HttpSession session)
//	{
//		venbook.setUsr((User)session.getAttribute("UserObj"));
//		System.out.println(venbook.getVenuename());
//		venbookservc.setvenbook(venbook);
//		return "redirect:/userbookings";
//	}
	
	
	
	//ADMIN 
		@GetMapping("allbookings")
		public String displayallbookings(Model model)
		{
			List <venuebooking> mylist=venbookservc.getallbookings();
			model.addAttribute("bookingslist", mylist);
			return "displaybookings";
		}
}
