package com.klef.jfsd.springboot.controller;
  
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.model.Supplier;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
  @Autowired
  private AdminService adminService;
  
  @Autowired
  private JavaMailSender mailSender;
   
  
  @GetMapping("/")
  public ModelAndView home()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("home");
       return mv;
     }
  
  @GetMapping("adminlogin")
  public ModelAndView adminlogin()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminlogin");
       return mv;
     }
  @GetMapping("sample")
  public ModelAndView sample()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("sample");
       return mv;
     }
  
  @PostMapping("checkadminlogin")
  //@ResponseBody
  public ModelAndView checkadminlogin(HttpServletRequest request)
  {
 	 ModelAndView mv = new ModelAndView();
 	 
 	 String username=request.getParameter("username");
 	 String password=request.getParameter("password");
 	 Admin admin= adminService.checkadminlogin(username, password);
 	 if(admin!=null)
 	 {
 		 //return "Admin Login Success";
 		 mv.setViewName("adminhome"); 
 	 }
 	 else
 	 {
 		 //return "Admin Login Fail";
 		 mv.setViewName("adminloginfail");
 		 mv.addObject("message","Login Failed");
 	 } 
 	 return mv;
  }
  
  @GetMapping("adminhome")
  public ModelAndView adminhome()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("adminhome"); 
       
       return mv;
     }
     
    
     
     @GetMapping("adminlogout")
     public ModelAndView adminlogout()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("adminlogin");
          return mv;
        }
     
     
     @GetMapping("aboutfoodwastage")
     public ModelAndView aboutfoodwastage()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("aboutfoodwastage"); 
          
          return mv;
        }
     
     @GetMapping("aboutus")
     public ModelAndView aboutus()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("aboutus"); 
          
          return mv;
        }
     
     @GetMapping("contactus")
     public ModelAndView contactus()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("contactus"); 
          
          return mv;
        }
     
     @GetMapping("donate")
     public ModelAndView donate()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("donate"); 
          
          return mv;
        }
     @GetMapping("donationhome")
     public ModelAndView donationhome()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("donationhome"); 
          
          return mv;
        }
     
     @GetMapping("findsolutions")
     public ModelAndView findsolutions()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("findsolutions"); 
          
          return mv;
        }
     
     @GetMapping("improvefoodsecurity")
     public ModelAndView improvefoodsecurity()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("improvefoodsecurity"); 
          
          return mv;
        }
     
     @GetMapping("reducefoodwastage")
     public ModelAndView reducefoodwastage()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("reducefoodwastage"); 
          
          return mv;
        }
     
     @GetMapping("signin")
     public ModelAndView signin()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("signin"); 
          
          return mv;
        }
     
     @GetMapping("sigunp")
     public ModelAndView signup()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("signup"); 
          
          return mv;
        }
     @GetMapping("regsucess")
     public ModelAndView regsuccess()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("regsuccess"); 
          
          return mv;
        }
     @GetMapping("support")
     public ModelAndView support()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("support"); 
          
          return mv;
        }
     @GetMapping("login")
     public ModelAndView login()
        {
          ModelAndView mv = new ModelAndView();
          mv.setViewName("login"); 
          
          return mv;
        }
     @GetMapping("viewalldonors")
     public ModelAndView viewAllDonors()
     {
       ModelAndView mv = new ModelAndView();
       List<Donor> donorlist = adminService.ViewAllDonors();
       mv.setViewName("viewalldonors");
       mv.addObject("donorlist",donorlist);
       long count= adminService.donorcount();
       mv.addObject("count", count);
       return mv;
     }
     @GetMapping("updatedonorstatus")
     public ModelAndView updatedonorstatus()
     {
       ModelAndView mv = new ModelAndView();
       List<Donor> donorlist = adminService.ViewAllDonors();
       mv.setViewName("updatedonorstatus");
       mv.addObject("donorlist",donorlist);
       return mv;
     }
     
     @GetMapping("deletedonor")
     public ModelAndView deletedonor()
     {
       ModelAndView mv = new ModelAndView();
       List<Donor> donorlist = adminService.ViewAllDonors();
       mv.setViewName("deletedonor");
       mv.addObject("donorlist",donorlist);
       return mv;
     }
    @GetMapping("delete")
    public String deleteoperation(@RequestParam("id") int did)
    {
    	adminService.deletedonor(did);
    	return "redirect:/deletedonor"; // redirected to specific path
    }
    @GetMapping("viewallsups")
    public ModelAndView viewAllSuppliers()
    {
      ModelAndView mv = new ModelAndView();
      List<Supplier> supplierlist = adminService.ViewAllSuppliers();
      mv.setViewName("viewallsuppliers");
      mv.addObject("supplierlist",supplierlist);
      return mv;
    } 
     
    @PostMapping("/sendmail")
    public String sendMail(@RequestParam("name") String name,
                           @RequestParam("email") String email,
                           @RequestParam("message") String message,
                           Model model) {
        try {
            // Construct the email
            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setTo("recipient_email@example.com"); // Replace with recipient email
            mailMessage.setSubject("Contact Us Form Submission");
            mailMessage.setText("Name: " + name + "\nEmail: " + email + "\nMessage: " + message);

            // Send the email
            mailSender.send(mailMessage);

            model.addAttribute("successMessage", "Your message has been sent successfully!");
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Failed to send your message. Please try again later.");
        }

        return "contact"; // Reload the same page with a success or error message
    }
    
   
   
}