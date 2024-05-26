package com.demo.springmvc.SpringMVC.controller;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.springmvc.SpringMVC.Dto.UserDto;
import com.demo.springmvc.SpringMVC.model.User;
import com.demo.springmvc.SpringMVC.model.venuebooking;
import com.demo.springmvc.SpringMVC.service.FeedbackService;
import com.demo.springmvc.SpringMVC.service.Userservice;
import com.demo.springmvc.SpringMVC.service.VenueService;
import com.demo.springmvc.SpringMVC.service.venuebookingservice;

import jakarta.servlet.http.HttpSession;

@Controller
public class Usercontroller {
	private String adminUserName="admin";
	private String adminPassword="24122001"; 
	@Autowired
	Userservice usrsev;
	@Autowired
	private ModelMapper modelMapper;
	
	@Autowired
	FeedbackService fserv;
	@Autowired
	venuebookingservice vbookserv;
	@Autowired
	VenueService venserv;

	@RequestMapping("say-hello-jsp") // to map URL(ex:"say-hello-jsp") to a entire class or method
	// @ResponseBody //this says that return value(as its is) of method must be
	// written on http response body
	// But if we remove @ResponseBody then the method returns the JSP file its name
	// is written as return value
	public String hellojsp() {
		return "hello";// name of the jsp file and its suffix and prefix defined in properties
	}

	////////////////////////////////////////////////////////////

	@RequestMapping(value = "home-page")
	public String homepage(@ModelAttribute("user") User user) {

		return "home";

	}

	@RequestMapping("registration")
	public String user_registration(@ModelAttribute("user") UserDto userdto1) {

		return "registration";
	}

	@PostMapping("savecustomer")
	public String user_registrationpost(@ModelAttribute("user") UserDto userdto1,Model model)
	{
		if(usrsev.checkusername(userdto1.getUsername()))
		{
			if(usrsev.checkpassword(userdto1.getPassword()))
			{
				User user1 = modelMapper.map(userdto1, User.class);// converting Dto to entity for abstration
				usrsev.saveuser(user1);
				return "home";
			}
			model.addAttribute("msg","Try a Strong Password");
			return "registration";	
		}
		model.addAttribute("msg","Username alreday taken.Try another!!!");
		return "registration";		
	}

	@PostMapping("validate&login")
	public String checklogin(@ModelAttribute("user") UserDto userdto1, HttpSession session, Model model) {
		session.setAttribute("sess1", userdto1.getUsername());// configuring SESSION and storing username in session
		String usrName = (String) session.getAttribute("sess1");
		User user1 = modelMapper.map(userdto1, User.class);
		
		if((user1.getUsername()).equals(adminUserName) && (user1.getPassword()).equals(adminPassword))//ADMIN LOGINxs
		{
			model.addAttribute("vcount",venserv.venount());
			model.addAttribute("fecount",fserv.fcount());
			model.addAttribute("bcount", vbookserv.bookcount());
			return "admin_dashboard";
		}
		
		if (usrsev.validatelogcrede(user1.getUsername(), user1.getPassword())) 
		{
			session.setAttribute("UserObj", usrsev.sessionOBJ(usrName));//creating session OBJECT
			//System.out.println(session.getAttribute("UserObj"));
			User currentuser=(User) session.getAttribute("UserObj");
			model.addAttribute("name", currentuser.getName());
			return "user_dashboard";
		}
		model.addAttribute("mesg1", "Please enter valid credetials");
		return "home";
	}
	

	@RequestMapping(path = "logout")
	public String user_dashboard(HttpSession session,@ModelAttribute("user") UserDto userdto1) 
	{
		session.removeAttribute("sess1");
		session.removeAttribute("UserObj");
		//System.out.println(session.getAttribute("sess1"));
		session.invalidate();
		return "home";
	}
	
	/////////////////////////////////
	@GetMapping("viewadmin")	// @GetMapping annotation is used to map an HTTP GET request to a specific handler method 
	public String viewadmin(Model model)	//Inside the parentheses, provide the URL that you want to associate with the method.
	{
		model.addAttribute("vcount",venserv.venount());
		model.addAttribute("fecount",fserv.fcount());
		model.addAttribute("bcount", vbookserv.bookcount());
		return "admin_dashboard";
	}
	
	@GetMapping("/getuserdashboard")
	public String giveuserdashboard(Model model,HttpSession session)
	{
		User currentuser=(User) session.getAttribute("UserObj");
		model.addAttribute("name", currentuser.getName());
		return "user_dashboard";	}
	

}
