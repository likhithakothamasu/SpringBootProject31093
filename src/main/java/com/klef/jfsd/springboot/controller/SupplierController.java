package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Donor;
import com.klef.jfsd.springboot.model.Supplier;
import com.klef.jfsd.springboot.service.SupplierService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class SupplierController {
    
    @Autowired
    private SupplierService supplierService;

    // Supplier Registration Page
    @GetMapping("supreg")
    public ModelAndView supreg() {
        ModelAndView mv = new ModelAndView("supreg");
        return mv;
    }

    // Supplier Login Page
    @GetMapping("supplierlogin")
    public ModelAndView suplogin() {
        ModelAndView mv = new ModelAndView("suplogin");
        return mv;
    }

    // Handle Supplier Registration
    @PostMapping("insertsup")
    public ModelAndView insertsup(HttpServletRequest request) {
        String name = request.getParameter("sname");
        String email = request.getParameter("semail");
        String password = request.getParameter("spwd");
        String contact = request.getParameter("scontact");
        String gender = request.getParameter("sgender");
        String city = request.getParameter("scity");
        String ratingParam = request.getParameter("srating");

        if (city == null || city.trim().isEmpty()) {
            ModelAndView mv = new ModelAndView("errorPage");
            mv.addObject("message", "City is a required field and cannot be empty.");
            return mv;
        }

        double rating = 0.0;
        if (ratingParam != null && !ratingParam.isEmpty()) {
            try {
                rating = Double.parseDouble(ratingParam.trim());
            } catch (NumberFormatException e) {
                ModelAndView mv = new ModelAndView("errorPage");
                mv.addObject("message", "Invalid rating format. Please enter a valid number.");
                return mv;
            }
        }

        Supplier supplier = new Supplier();
        supplier.setName(name);
        supplier.setEmail(email);
        supplier.setPassword(password);
        supplier.setContactNumber(contact);
        supplier.setGender(gender);
        supplier.setCity(city);
        supplier.setRating(rating);

        String msg = supplierService.SupplierRegistration(supplier);
        ModelAndView mv = new ModelAndView("regsuccess");
        mv.addObject("message", msg);

        return mv;
    }


    // Handle Supplier Login
    @PostMapping("checksupplierlogin")
    public ModelAndView checksuplogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String semail = request.getParameter("email");
        String spwd = request.getParameter("password");
        Supplier supplier = supplierService.checksuplogin(semail, spwd);
        
        if (supplier != null) {
            HttpSession session = request.getSession();
            session.setAttribute("supplier", supplier);
            mv.setViewName("suphome");
        } else {
            mv.setViewName("suplogin");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("suphome")
    public ModelAndView suphome() {
        return new ModelAndView("suphome");
    }

    // Supplier Update Page
    @GetMapping("updatesup")
    public ModelAndView updatesup() {
        return new ModelAndView("updatesup");
    }

    // Update Supplier Profile
    @PostMapping("updatesupprofile")
    public ModelAndView updatesupprofile(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name").trim();
            String gender = request.getParameter("gender").trim();
            String city = request.getParameter("city").trim();
            double rating = Double.parseDouble(request.getParameter("rating").trim());
            String password = request.getParameter("pwd").trim();
            String contact = request.getParameter("contact").trim();
            
            Supplier supplier = new Supplier();
            supplier.setId(id);
            supplier.setName(name);
            supplier.setGender(gender);
            supplier.setCity(city);
            supplier.setRating(rating);
            supplier.setPassword(password);
            supplier.setContactNumber(contact);
            
            String msg = supplierService.updateSupplierProfile(supplier);
            
            HttpSession session = request.getSession();
	        session.setAttribute("supplier",supplier);
	        mv.setViewName("updatesuccess");
            mv.addObject("message", msg);
        } catch (Exception e) {
            mv.setViewName("updateerror");
            mv.addObject("message", e.getMessage());
        }
        return mv;
    }

    // Delete Supplier
    @GetMapping("deletes")
    public ModelAndView deletsup() {
        ModelAndView mv = new ModelAndView("deletesup");
        List<Supplier> suplist = supplierService.ViewAllSuppliers();
        mv.addObject("suplist", suplist);
        return mv;
    }

    @GetMapping("deletesup")
    public String deleteoperation(@RequestParam("id") int sid) {
        supplierService.deleteSupplier(sid);
        return "redirect:/deletesup";
    }

    // View Suppliers by City
    @GetMapping("viewallsupsbycity")
    public ModelAndView viewallsupsbycity(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("viewallsupsbycity");
        HttpSession session = request.getSession();
        Supplier supplier = (Supplier) session.getAttribute("supplier");
        List<Supplier> suplist = supplierService.displaySupplierByCity(supplier.getCity());
        mv.addObject("suplist", suplist);
        return mv;
    }
    @GetMapping("supplierprofile")
	public ModelAndView supplierprofile()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("supplierprofile");
		return mv;
	}
    @GetMapping("updatesupplier")
	public ModelAndView updatesupplier()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("updatesupplier");
		return mv;
	}
    @PostMapping("updatesupplierprofile")
	public ModelAndView updateSupplierProfile(HttpServletRequest request)
	{
		 ModelAndView mv = new ModelAndView();
		 try
		 {
			 int id = Integer.parseInt(request.getParameter("id"));
			 String name = request.getParameter("name");
			 String gender = request.getParameter("gender");
			 String email = request.getParameter("email");
			 String contact = request.getParameter("contact");
			 String city = request.getParameter("city");
			 Double rating = Double.parseDouble(request.getParameter("rating").trim());
			 String password = request.getParameter("pwd"); 
			
			 
			 Supplier sup=new Supplier();
			 sup.setId(id);
			 sup.setName(name);
			 sup.setGender(gender);
			 sup.setEmail(email); 
			 sup.setContactNumber(contact);
			 sup.setCity(city);
			 sup.setRating(rating);
			 sup.setPassword(password);
			
			 String msg=supplierService.updateSupplierProfile(sup);
			 Supplier s=supplierService.displaySupplierByID(id);
			 HttpSession session = request.getSession();
	         session.setAttribute("supplier",s);
			 mv.setViewName("updatesuccess");
			 mv.addObject("message", msg);
		 }
		 catch(Exception e)
		 {
			 mv.setViewName("updateerror");
			 mv.addObject("message", e);
		 }
		 return mv;
	}
    @GetMapping("trackdonations")
	public ModelAndView trackdonations()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("trackdonations");
		return mv;
	}
    
}
