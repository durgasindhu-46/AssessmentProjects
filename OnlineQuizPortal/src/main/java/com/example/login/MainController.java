package com.example.login;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @RequestMapping("/")
    public String hello(){
        return "Welcome to Our site";
    }

    @RequestMapping("/user")
    public String protectedHello(){
        return "Welcome user";
    }

    @RequestMapping("/admin")
    public String admin(){
        return "Welcome admin";
    }

}

