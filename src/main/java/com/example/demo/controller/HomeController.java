package com.example.demo.controller;

import com.example.demo.model.AppUser;
import com.example.demo.repository.AppUserRepository;
import java.util.ArrayList;
import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
    private final AppUserRepository appUserRepository;

    public HomeController(AppUserRepository appUserRepository) {
        this.appUserRepository = appUserRepository;
    }

    @GetMapping("/hello")
    public List<AppUser> hello(){
        List<AppUser> appUsers = appUserRepository.findAll();
        return appUsers;
    }
}
