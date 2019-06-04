package com.bd05.rent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestRentController {
    //去租房订单待审核list页面
    @RequestMapping("/toReferendunRentList")
    public String toMaintainUserList(){
        return "/ftl/rent/referendum_rentlist";
    }

    //去租房订单待详情页面审核一张订单
    @RequestMapping("/toUpdateRent")
    public String toUpdateRent(){
        return "/ftl/rent/addrent";
    }
}
