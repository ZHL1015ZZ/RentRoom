package com.bd05.rent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestHouseController {
    //去待审批房源页面
    @RequestMapping("/toReferendumHouseList")
    public String toReferendumHouseList(){
        return "/ftl/house/referendum_houselist";
    }
    //去待审房源详细页面
    @RequestMapping("/toReferendumAddHouse")
    public String toReferendumAddHouse(){
        return "/ftl/house/referendum_addhouse";
    }

}
