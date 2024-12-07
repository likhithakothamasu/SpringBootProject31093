package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Donor;

public interface DonorService 
{
	public String DonorRegistration(Donor d);
	public Donor checkdonorlogin(String email,String password);
	public Donor displayDonorByID(int did);
	public String UpdateDonorProfile(Donor d);
}
