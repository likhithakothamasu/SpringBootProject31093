package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/homec")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("homec");
        return mv;
    }

    @GetMapping("customerreg")
    public ModelAndView customerRegistrationPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("customerreg");
        return mv;
    }
    
    @GetMapping("customerlogin")
    public ModelAndView customerlogin(HttpSession session) {
        ModelAndView mv = new ModelAndView("customerlogin");
        return mv;
    }
    
    @PostMapping("insertcustomer")
    public ModelAndView insertCustomer(HttpServletRequest request) {
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String contactno = request.getParameter("contactno");
        String yearlyincome = request.getParameter("yearlyincome");

        Customer customer = new Customer();
        customer.setName(name);
        customer.setGender(gender);
        customer.setEmail(email);
        customer.setPassword(password);
        customer.setAddress(address);
        customer.setContactno(contactno);
        customer.setYearlyincome(yearlyincome);

        String message = customerService.CustomerRegistration(customer);
        ModelAndView mv = new ModelAndView("regsuccessc");
        mv.addObject("message", message);

        return mv;
    }
    
    @PostMapping("checkcustomerlogin")
    @ResponseBody
    public ModelAndView checkCustomerLogin(HttpServletRequest request) {
        String email = request.getParameter("c_email");
        String password = request.getParameter("c_password");

        Customer customer = customerService.checkcustomerlogin(email, password);
        ModelAndView mv = new ModelAndView();

        if (customer != null) {
            HttpSession session = request.getSession();
            session.setAttribute("customer", customer);
            mv.setViewName("customerhome");
        } else {
            mv.setViewName("customerlogin");
            mv.addObject("message", "Login Failed");
        }

        return mv;
    }

    @GetMapping("customerprofile")
    public ModelAndView customerProfile(HttpSession session) {
        Customer customer = (Customer) session.getAttribute("customer");
        ModelAndView mv = new ModelAndView("customerprofile");
        mv.addObject("customer", customer);
        return mv;
    }

    @PostMapping("updatecustomerprofile")
    public ModelAndView updateCustomerProfile(HttpServletRequest request, HttpSession session) {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String address = request.getParameter("address");
            String contactno = request.getParameter("contactno");
            String yearlyincome = request.getParameter("yearlyincome");

            Customer customer = new Customer();
            customer.setId(id);
            customer.setName(name);
            customer.setGender(gender);
            customer.setEmail(email);
            customer.setPassword(password);
            customer.setAddress(address);
            customer.setContactno(contactno);
            customer.setYearlyincome(yearlyincome);
            
            String message = customerService.UpdateCustomerProfile(customer);
            Customer updatedCustomer = customerService.displayCustomerByID(id);
            
            session.setAttribute("customer", updatedCustomer);
            ModelAndView mv = new ModelAndView("updatesuccessc");
            mv.addObject("message", message);
            return mv;
        } catch (Exception e) {
            ModelAndView mv = new ModelAndView("updateerrorc");
            mv.addObject("message", e.getMessage());
            return mv;
        }
    }

    @GetMapping("customerlogout")
    public ModelAndView logout(HttpSession session) {
        session.invalidate();
        ModelAndView mv = new ModelAndView("customerlogin");
        return mv;
    }
    @GetMapping("customerhome")
    public ModelAndView customerhome(HttpSession session) {
        ModelAndView mv = new ModelAndView("customerhome");
        return mv;
    }
}
