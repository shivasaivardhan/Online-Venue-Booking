package com.demo.springmvc.SpringMVC.rerpository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.springmvc.SpringMVC.model.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Integer>
{
	@Query("select f from Feedback f")
	public List<Feedback> fetchfeeds();
	

}
