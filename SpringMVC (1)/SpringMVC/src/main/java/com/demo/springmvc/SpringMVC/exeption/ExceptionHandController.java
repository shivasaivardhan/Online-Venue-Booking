package com.demo.springmvc.SpringMVC.exeption;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.demo.springmvc.SpringMVC.model.User;

@ControllerAdvice
public class ExceptionHandController 

{
	@ExceptionHandler(value = SessExpireException.class)
	public String sessexpired(Model model,@ModelAttribute("user") User user)
	{
		model.addAttribute("mesg1","Session Expired.Please Relogin");
		return "home";
	}
	
	@ExceptionHandler(value =VenueNameException.class)
	public String wrongname(Model model)
	{
		model.addAttribute("msg","Venue name not found.Please check");
		return "bookvenue";
	}
	
	@ExceptionHandler(value =DateNotAvaliableException.class)
	public String nodateaval(Model model)
	{
		model.addAttribute("msg", "Venue not avaliable on the given date");
		return "bookvenue";
	}
	
	@ExceptionHandler(value =BookingIDNotFoundException.class)
	public String bookIdnotAval(RedirectAttributes model)
	{
		model.addFlashAttribute("msg", "BookingID not found");
		return "redirect:/userfeedback";
	}
	
}
