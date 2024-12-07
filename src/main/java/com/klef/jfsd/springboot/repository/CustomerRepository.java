package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Customer;

import jakarta.transaction.Transactional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer>
{
	@Query("select c from Customer c where c.email=?1 and c.password=?2")
	public Customer checkcustomerlogin(String email, String password);
	 
	 @Query("update Customer c set c.yearlyincome=?1 where c.id=?2")
	 @Modifying
	 @Transactional
	 public int updatecustomeryearlyincome(String yearlyincome,int did);
}
