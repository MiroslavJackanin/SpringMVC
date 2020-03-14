package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    @RequestMapping("/showForm")
    public String showForm(){
        return "helloworld-form";
    }

    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }

    @RequestMapping("/processFormV2")
    public String stringToUpper(HttpServletRequest request, Model model){

        model.addAttribute("myMessage", "Hey ! " + request.getParameter("studentName").toUpperCase());

        return "helloworld";
    }

    @RequestMapping("/processFormV3")
    public String processFormV3Method(@RequestParam("studentName") String theName, Model model){

        model.addAttribute("myMessage", "Form V3 " + theName.toUpperCase());

        return "helloworld";
    }
}
