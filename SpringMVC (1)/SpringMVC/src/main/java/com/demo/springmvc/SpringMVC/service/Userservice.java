package com.demo.springmvc.SpringMVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.demo.springmvc.SpringMVC.model.User;
import com.demo.springmvc.SpringMVC.rerpository.UserRepository;

@Service
public class Userservice 
{
	@Autowired
	UserRepository userrepo;
	
	

	public void saveuser(User obj)
	{
		userrepo.save(obj);
		//System.out.println(users_details.size());

	}
	
	//Validating LOGIN Credentials
	public boolean validatelogcrede(String val1,String val2)
	{
	
		User u=userrepo.validateUser(val1, val2);
		if(u!=null)
			return true;
		else
			return false;
				
	}
	
	public User sessionOBJ(String val)
	{
		List<User> users_details=userrepo.findAll();
		 for(User obj:users_details)
		 {
			 if((obj.getUsername()).equals(val))
			 {
				 return obj;
			 }
		 }
		 return null;
	}
	
	public boolean checkusername(String val)
	{
		User u=userrepo.checkUser(val);
		if(u==null)
		{
			return true;
		}
		return false;
	}
	
	public boolean checkpassword(String password)//check for strong password
	{
		if (password.length() < 8) {
			return false;
		}
		
		boolean hasUppercase = false;
        boolean hasLowercase = false;
       boolean hasSpecialChar = false;
       
       for (char ch : password.toCharArray()) {
           if (Character.isUpperCase(ch)) {
               hasUppercase = true;
           } else if (Character.isLowerCase(ch)) {
               hasLowercase = true;
           } else if (isSpecialCharacter(ch)) {
               hasSpecialChar = true;
           }
       }

       return hasUppercase && hasLowercase && hasSpecialChar;
       
      
	}
	
	 private static boolean isSpecialCharacter(char ch) {
         String specialChars = "!@#$%^&*()_+{}[]|\\:;<>,.?/-";
         return specialChars.contains(String.valueOf(ch));
     }
}
