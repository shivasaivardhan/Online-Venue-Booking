package com.demo.springmvc.SpringMVC.rerpository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.springmvc.SpringMVC.model.venue;

public interface VenueRepository extends JpaRepository<venue, Integer> {
	@Query("select ven from venue ven")
	public List<venue> getallvenues();

	@Query("select v from venue v where v.id=?1")
	public venue findvenue(int id);

	@Query("select ven from venue ven where ven.name like ?1")
	public venue getvenue(String x);
	
	public venue findByNameIgnoreCase(String vname);
	
}