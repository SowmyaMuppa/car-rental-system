package com.infosys.carRentalSystem.controller;

import com.infosys.carRentalSystem.bean.CarUser;
import com.infosys.carRentalSystem.service.CarUserService;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LoginController {
	 private final BCryptPasswordEncoder bCrypt;
    @Autowired
    public LoginController(BCryptPasswordEncoder bCrypt) {
        this.bCrypt = bCrypt;
    }

    @Autowired
    private CarUserService service;
    @GetMapping("/loginpage")
    public ModelAndView showLoginPage() {
		String username = service.getUserName();
		ModelAndView mv= new ModelAndView("loginPage");
		mv.addObject("userName", username);
		return mv;
    }
    @GetMapping("/loginSuccess")
    public ModelAndView loginSuccess(HttpSession session) {
        String username = service.getUserName();
        session.setAttribute("userName", username);
        return new ModelAndView("redirect:/loginpage");
    }
    @GetMapping("/loginerror")
    public ModelAndView showLoginErrorPage() {
        return new ModelAndView("loginErrorPage");
    }

    @GetMapping("/index")
    public ModelAndView showIndexPage() {
        String role = service.getRole();
        String page = "";
        if(role.equalsIgnoreCase("Admin"))
            page = "index1";
        else if(role.equalsIgnoreCase("Customer"))
            page = "index2";
        return new ModelAndView(page);
    }
    
    @GetMapping("/")
    public ModelAndView showHomePage() {
        String role = service.getRole();
        String page = "";
        if(role.equalsIgnoreCase("Admin"))
            page = "index1";
        else if(role.equalsIgnoreCase("Customer"))
            page = "index2";
        return new ModelAndView(page);
    }

    @GetMapping("/register")
    public  ModelAndView newUserEntryPage() {
        ModelAndView mv = new ModelAndView("newUserEntry");
        CarUser carUser = new CarUser();
        mv.addObject("userRecord", carUser);
        return mv;
    }

    @PostMapping("/register")
    public ModelAndView saveNewUser(@ModelAttribute("userRecord") CarUser carUser) {
        CarUser newUser = new CarUser();
        String encodedPassword = bCrypt.encode(carUser.getPassword());
        newUser.setUsername(carUser.getUsername());
        newUser.setRole(carUser.getRole());
        newUser.setEmail(carUser.getEmail());
        newUser.setPassword(encodedPassword);
        service.save(newUser);
        return new ModelAndView("loginPage");
    }
}
