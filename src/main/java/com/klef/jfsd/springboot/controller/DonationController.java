package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Donation;
import com.klef.jfsd.springboot.service.DonationService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class DonationController
{
    @Autowired
    public DonationService donationService;
    
    @GetMapping("adddonation")
	public ModelAndView adddonation()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adddonation");
		return mv;
	}
    
    @PostMapping("insertdonation")
    public ModelAndView insertdonation(HttpServletRequest request) throws java.text.ParseException {
    	String msg;
    	ModelAndView mv = new ModelAndView();
    	try {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String streetAddress = request.getParameter("streetAddress");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        int donorId =Integer.parseInt( request.getParameter("donorid"));
        String expirydatestr = request.getParameter("expiryDate");
        String cookedorraw = request.getParameter("cookedRaw");
        String queries = request.getParameter("queries");
        
        
        Date expiryDate = null;
        expiryDate = new SimpleDateFormat("yyyy-MM-dd").parse(expirydatestr);
        
        Donation donate = new Donation();
        donate.setFirstName(firstName);
        donate.setLastName(lastName);
        donate.setEmail(email);
        donate.setPhoneNumber(phoneNumber);
        donate.setStreetAddress(streetAddress);
        donate.setCity(city);
        donate.setState(state);
        donate.setCountry(country);
        donate.setDonorid(donorId);
        donate.setExpirydate(expiryDate);
        donate.setCookedorraw(cookedorraw);
        donate.setQueries(queries);

         msg = donationService.AddDonation(donate);
        
		  System.out.println(msg);
		  mv.setViewName("donationsuccess");
		  mv.addObject("message",msg);
    	}catch(Exception e)
 	   {
 		   msg = e.getMessage();
 		   System.out.println(msg.toString());
 		   mv.setViewName("donationerror");
 		   mv.addObject("message",msg);
 	   }
        return mv;
    }
    @GetMapping("viewalldonations")
    public ModelAndView viewAllDonations()
    {
      ModelAndView mv = new ModelAndView();
      List<Donation> donationlist = donationService.ViewAllDonations();
      mv.setViewName("viewalldonations");
      mv.addObject("donationlist",donationlist);
      long count= donationService.donationcount();
      mv.addObject("count", count);
      return mv;
    }
    
   
    @GetMapping("viewdonation")
    public String viewDonation(@RequestParam("id") int id, HttpServletRequest request) {
     
        Donation donation = donationService.getDonationById(id);
        request.setAttribute("donation", donation);
        return "viewdonation";
        
    }
    @GetMapping("deletedonation")
    public ModelAndView viewAllDonationsForDeletion() {
        ModelAndView mv = new ModelAndView();
        List<Donation> donationList = donationService.ViewAllDonations(); // Fetches all donations
        mv.setViewName("deletedonation"); // JSP page to display the list with delete options
        mv.addObject("donationList", donationList);
        return mv;
    }

    @PostMapping("deleteDonation")
    public String deleteDonation(@RequestParam("id") int id) {
        donationService.deleteDonationById(id); 
        return "redirect:/deletedonation"; 
    }


    

}
