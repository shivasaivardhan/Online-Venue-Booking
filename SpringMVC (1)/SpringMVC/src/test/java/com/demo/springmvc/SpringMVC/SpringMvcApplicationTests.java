package com.demo.springmvc.SpringMVC;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.modelmapper.ModelMapper;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.ui.Model;

import com.demo.springmvc.SpringMVC.Dto.UserDto;
import com.demo.springmvc.SpringMVC.controller.Usercontroller;
import com.demo.springmvc.SpringMVC.model.User;
import com.demo.springmvc.SpringMVC.service.Userservice;

import jakarta.servlet.http.HttpSession;

@SpringBootTest
class SpringMvcApplicationTests {

	
	@Mock
	private Model model;
	@Mock
	private HttpSession session;
	@Mock
	private Userservice uServ;
	@Mock
	private ModelMapper modelmapper;
	
	
	
	@InjectMocks
	private Usercontroller userContro;
	
	
	@Test
	public void testloginvalidate() 
	{
		String uname="dummy";
		String password="fhgfvjhvjh";
		
		UserDto mockuser=new UserDto();
		mockuser.setUsername(uname);
		mockuser.setPassword(password);
		
		when(uServ.validatelogcrede(mockuser.getUsername(), mockuser.getPassword())).thenReturn(true);
		String viewname=userContro.checklogin(mockuser, session, model);
		assertEquals("user_dashboard", viewname);
		
		User mkuser=new User();
		mkuser.setUsername(uname);
		mkuser.setPassword(password);
		verify(uServ).validatelogcrede(mkuser.getUsername(), mkuser.getPassword());
		
	}

}
