package com.bd05.rent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestMaintainUserController {

    //去查询客户信息页面
    @RequestMapping("/toMaintainUserList")
    public String toMaintainUserList(){
        return "/ftl/maintainUser/maintainUser_list";
    }
    //去修改客户信息页面
    @RequestMapping("/toUpdateMaintainUserList")
    public String toUpdateMaintainUserList(){
        return "/ftl/maintainUser/maintainUser_update";
    }


}
