package com.demo.springmvc.SpringMVC.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.springmvc.SpringMVC.model.User;
import com.demo.springmvc.SpringMVC.model.venue;
import com.demo.springmvc.SpringMVC.service.VenueService;
import com.demo.springmvc.SpringMVC.service.venuebookingservice;

@Controller
public class VenueController
{
	@Autowired
	VenueService venserv;
	@Autowired
	venuebookingservice venbookserv;
	
	@RequestMapping("venueform")
	public String viewvenueform(@ModelAttribute("ven") venue ven1)
	{
		return "addvenue";
	}
	@RequestMapping("addvenue")
	public String addvenue(@ModelAttribute("ven") venue ven1,RedirectAttributes model)
	{
		venserv.savevenue(ven1);
		model.addFlashAttribute("msg", "Venue Added Successfully");
		return "redirect:/venueform";
	}
	
	@GetMapping("allvenues")//for user
	public String displayvenues(Model model)
	{
		List<venue> venueslist =venserv.showvenues();
		model.addAttribute("venueslist", venueslist);
		return  "showallvenues";
	}
	
	@RequestMapping("/bookselectedvenue/{venname}")//filling form for selected venue
	public String finalizevenue(@PathVariable("venname") String name,Model model)
	{
		model.addAttribute("vname",name);
		System.out.println(name);
		return "finalbook_usr";
	}
	
	@RequestMapping("showadvenues")//all venuies for admin
	public String venuesforadmin(Model model)
	{
		List<venue> venueslist =venserv.showvenues();
		model.addAttribute("venueslist", venueslist);
		return "adminvenues";
	}
	
	@RequestMapping("deletevenue/{vid}")//Delete venue
	public String deletevenue (@PathVariable("vid") int v_id,RedirectAttributes model)
	{
		venbookserv.deletebookings(v_id);
		venserv.deletevenue(v_id);
		model.addFlashAttribute("dmsg","Venue Deleted Successfully");
		return "redirect:/showadvenues";
	}
	
	@RequestMapping("editvenue/{vid}/")//Edit  venue
	public String editvenue (@PathVariable("vid") int id,Model model)
	{
		venue obj=venserv.findvenue(id);
		model.addAttribute("command",obj);//sending selected venue for editing
		return "editvenue";
	}
	
	@RequestMapping("/updatevenue")
	public String updatevenue(@ModelAttribute("ven") venue obj1)
	{
		venserv.update(obj1);
		return "redirect:/showadvenues"; 
	}
	
	
	
}
