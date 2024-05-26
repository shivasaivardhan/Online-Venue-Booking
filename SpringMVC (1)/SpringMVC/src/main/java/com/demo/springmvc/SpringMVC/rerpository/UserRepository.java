package com.demo.springmvc.SpringMVC.rerpository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.demo.springmvc.SpringMVC.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>
{
	@Query("select u from User u where u.username=?1 and u.password=?2")
	public User validateUser(String username,String password);
	
	@Query("select u from User u where u.username=?1")
	public User checkUser(String username); 
}
