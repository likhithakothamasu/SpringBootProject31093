package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Customer;

public interface CustomerService {
	public String CustomerRegistration(Customer c);
	public Customer checkcustomerlogin(String email,String password);
	public Customer displayCustomerByID(int cid);
	public String UpdateCustomerProfile(Customer c);
}
