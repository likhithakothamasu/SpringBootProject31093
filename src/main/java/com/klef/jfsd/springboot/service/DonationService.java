package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Donation;

public interface DonationService 
{
	public String AddDonation(Donation donate);
	 public List<Donation> ViewAllDonations();
	 public Donation getDonationById(int id);
	 public void deleteDonationById(int id);
	public long donationcount();

}
