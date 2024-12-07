package com.klef.jfsd.springboot.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.model.Donor;

import jakarta.transaction.Transactional;

public interface DonorRepository extends JpaRepository<Donor, Integer>
{

	 @Query("select d from Donor d where d.email=?1 and d.password=?2")
	public Donor checkdonorlogin(String email, String password);
	 
	 @Query("update Donor d set d.status=?1 where d.id=?2")
	 @Modifying
	 @Transactional
	 public int updatedonorstatus(String status,int did);
	 
}
