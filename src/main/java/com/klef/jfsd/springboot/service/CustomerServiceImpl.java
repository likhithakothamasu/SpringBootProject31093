package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;
@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerRepository customerRepository;
	@Override
	public String CustomerRegistration(Customer c) 
	{
		customerRepository.save(c);
		return "Donor Registered Successfully";
	}

	@Override
	public Customer checkcustomerlogin(String email, String password) 
	{
		return customerRepository.checkcustomerlogin(email,password);
	}

	@Override
	public Customer displayCustomerByID(int cid)
	{
		return customerRepository.findById(cid).get();
	}

	@Override
	public String UpdateCustomerProfile(Customer c)
	{
		Customer customer =customerRepository.findById(c.getId()).get();
		customer.setName(c.getName());
		customer.setGender(c.getGender());
		customer.setEmail(c.getEmail());
		customer.setPassword(c.getPassword());
		customer.setAddress(c.getAddress());
		customer.setContactno(c.getContactno());
		customer.setYearlyincome(c.getYearlyincome());
		
		customerRepository.save(customer);
		return "Donor Updated Successfully";
	}
}
