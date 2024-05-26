package com.demo.springmvc.SpringMVC.rerpository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.springmvc.SpringMVC.model.venuebooking;

public interface venuebookingrepository extends JpaRepository<venuebooking, Integer>
{
	@Query("select all from venuebooking all")
	public List<venuebooking> fetchallbookings();
	
	@Query("select all from venuebooking all where all.usr.id=?1")
	public List<venuebooking> getuserbookings(int x);
	
	@Query("select bk from venuebooking bk where bk.ven1.id=?1 and bk.eventdate=?2")
	public venuebooking checkbooking (int x,Date dt);
	
	public void deleteByVen1Id (int num);
	
	@Query("select all from venuebooking all where all.usr.id=?1 and all.id=?2")
	public venuebooking checkvenbooking(int x,int y);
	
}
