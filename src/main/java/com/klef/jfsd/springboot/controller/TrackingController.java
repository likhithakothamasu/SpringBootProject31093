package com.klef.jfsd.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.Tracking;
import java.util.Random;

@Controller
public class TrackingController {
    @GetMapping("/tracking")
    public String trackOrder(@RequestParam(name = "orderId", required = false) String orderId, Model model) {
        if (orderId != null) {
            // Simulate order status
            String status = "Order ID " + orderId + " is in transit.";
            Tracking tracking = new Tracking(orderId, status);
            model.addAttribute("tracking", tracking);
        }
        return "tracking"; // Matches JSP file name
    }
    
    @GetMapping("/orderstatus")
    public String orderStatus(@RequestParam("orderId") String orderId, Model model) {
        // Random messages for demonstration
        String[] messages = {
            "Your order is being packed!",
            "Your order has been dispatched!",
            "Your order is out for delivery!",
            "Your order has been delivered!"
        };
        Random random = new Random();
        String randomMessage = messages[random.nextInt(messages.length)];

        model.addAttribute("orderId", orderId);
        model.addAttribute("message", randomMessage);

        return "orderstatus"; // Redirected page
    }
}
