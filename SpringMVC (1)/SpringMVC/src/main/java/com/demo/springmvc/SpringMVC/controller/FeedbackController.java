package com.demo.springmvc.SpringMVC.controller;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.springmvc.SpringMVC.Dto.FeedbackDto;
import com.demo.springmvc.SpringMVC.exeption.BookingIDNotFoundException;
import com.demo.springmvc.SpringMVC.model.Feedback;
import com.demo.springmvc.SpringMVC.model.User;
import com.demo.springmvc.SpringMVC.model.venuebooking;
import com.demo.springmvc.SpringMVC.service.FeedbackService;
import com.demo.springmvc.SpringMVC.service.venuebookingservice;

import jakarta.servlet.http.HttpSession;

@Controller
public class FeedbackController 
{
	@Autowired
	FeedbackService feedservice;
	@Autowired 
	venuebookingservice venbookserv;
	
	@Autowired
	private ModelMapper modelMapper;
	
	@RequestMapping(path = "userfeedback" )
	public String givefeedback(@ModelAttribute("feedback") FeedbackDto feedbackdto)
	{
		return "givefeedback";
	}
	
	@PostMapping("savefeedback")
	public String saveuser(@ModelAttribute("feedback") FeedbackDto feedbackdto,RedirectAttributes model,HttpSession session)
	{
		User usObj=(User) session.getAttribute("UserObj");
		venuebooking vbkObj =venbookserv.findbooking(usObj.getId(),feedbackdto.getBook_id());
		if(vbkObj==null)
		{
		
			throw new BookingIDNotFoundException();
		}
		
		Feedback feedback = modelMapper.map(feedbackdto, Feedback.class);
		feedback.setUsr(usObj);
		feedservice.savefeedback(feedback);
		model.addFlashAttribute("msg", "Feedback Submitted");
		feedbackdto=null;
		return "redirect:/userfeedback";
	}
	
	
	
	//ADMIN 
	@GetMapping("allfeedbacks")
	public String displayfeedbacks(Model model)
	{
		List <Feedback> mylist=feedservice.getAllfeeds();
		//System.out.println("feedba list="+mylist);
		model.addAttribute("userlist", mylist);
		return "displayfeedbacks";
	}
	
	
}
