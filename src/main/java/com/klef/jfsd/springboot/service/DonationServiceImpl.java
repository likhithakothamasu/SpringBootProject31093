package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.repository.DonationRepository;

@Service
public class DonationServiceImpl implements DonationService
{
	@Autowired
	public DonationRepository donationRepository;

	@Override
	public String AddDonation(Donation donate) 
	{
		donationRepository.save(donate);
		return "Donation Submitted Successfully";	
	}
	 public List<Donation> ViewAllDonations() 
	 {
	     return donationRepository.findAll();
	  }
	 public Donation getDonationById(int id) 
	 { 
		 return donationRepository.findById(id).orElse(null);
	 }
	 public void deleteDonationById(int id) 
	 {
	     donationRepository.deleteById(id);
	  }
	 public long donationcount()
	 {
	 	return donationRepository.count();
	 }

}
