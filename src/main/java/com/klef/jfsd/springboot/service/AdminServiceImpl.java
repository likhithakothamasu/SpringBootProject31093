package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.model.Supplier;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.DonorRepository;
import com.klef.jfsd.springboot.repository.SupplierRepository;

@Service 
public class AdminServiceImpl implements AdminService 
{ 
 @Autowired 
 private DonorRepository donorRepository; 
  
 @Autowired 
 private AdminRepository adminRepository; 
 
 @Autowired
 private SupplierRepository supplierRepository;
 
 @Autowired
 private CustomerRepository customerRepository;
 
 @Override 
 public List<Donor> ViewAllDonors()  
 { 
  return donorRepository.findAll(); 
 } 
 
 @Override 
 public Admin checkadminlogin(String uname, String pwd) { 
   
  return adminRepository.checkadminlogin(uname, pwd); 
 }

@Override
public String deletedonor(int did) 
{
	 donorRepository.deleteById(did); 
	 return "Donor Deleted Successfully";
	
}

@Override
public Donor displaydonorbyId(int did)
{
	return donorRepository.findById(did).get();
}

@Override
public long donorcount()
{
	return donorRepository.count();
}


@Override 
public List<Supplier> ViewAllSuppliers()  
{ 
 return (List<Supplier>) supplierRepository.findAll(); 
}

@Override
public List<Customer> ViewAllCustomers() {
	return customerRepository.findAll();
}

@Override
public String deletecustomer(int cid) {
	customerRepository.deleteById(cid); 
	 return "Customer Deleted Successfully";
}

@Override
public Customer displaycustomerbyId(int cid) {
	return customerRepository.findById(cid).get();
}

@Override
public long customercount() {
	return customerRepository.count();
} 
  
}