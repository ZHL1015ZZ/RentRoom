package com.bd05.rent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestIndexController {
    @RequestMapping("/")
    public String toIndex(){

        return "index";
    }
    @RequestMapping("/topropertylisting")
    public String toPropertyList(){
        return "property-listing";
    }

}
