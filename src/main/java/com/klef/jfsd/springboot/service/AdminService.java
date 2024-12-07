package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.model.Supplier;
import com.klef.jfsd.springboot.model.Customer;

public interface AdminService 
{
	public List<Donor> ViewAllDonors();
	public List<Supplier> ViewAllSuppliers();
	public List<Customer> ViewAllCustomers();
	
	public Admin checkadminlogin(String uname,String pwd);
	
	public String deletedonor(int did);
	public Donor displaydonorbyId(int did);
	public long donorcount();
	
	public String deletecustomer(int cid);
	public Customer displaycustomerbyId(int cid);
	public long customercount();

}
