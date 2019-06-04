package com.bd05.rent.controller;

import com.bd05.rent.service.UserService;
import com.bd05.rent.service.impl.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("user")
public class TestUserController {

    @Resource
    private UserService service;

    //去个人资料页面
    @RequestMapping(value = "/toLogin")
    public String toLogin(Model model){
        System.out.println("1");
        model.addAttribute("u",service.detailUser(1));
        System.out.println(service.detailUser(1).getName());
        return "toLogin";
    }

    /**
     * h首页跳转后台指定页面的中转方法
     * @param flag
     * @param model
     * @return
     */
    // 前台个人中心直接跳转修改密码页面
    @RequestMapping("/indexToUser")
    public String indexToUser(String flag,Model model){
        model.addAttribute("flag",flag);
        return "frame_user";
    }


    //去用户的登录页面
    @RequestMapping(value = "/tologin-user")
    public String tologinUser(){
        return "login-user";
    }
    //执行登录方法判断登录
    @RequestMapping(value = "/dologin")
    public String toLogin(String user,String pwd ,Model model){
        if(user.equals("13100000000") && pwd.equals("123456")){
            return "index";
        }
       return "login-user";
    }
    //去用户个人中心页面，默认展示页面为个人资料页面
    @RequestMapping(value = "/toframeUser")
    public String toframeUser(){
        return "frame_user";
    }
    //去个人资料页面
    @RequestMapping(value = "/touserDetail")
    public String touserDetail(Model model){
        model.addAttribute("u",service.detailUser(1));
        System.out.println(service.detailUser(1).getName());
        return "/ftl/user/user_detail";
    }
    //去完善信息页面

    @RequestMapping(value = "/touserUpdate")
    public String touserUpdate(){

        return "/ftl/user/user_update";
    }
    //去修改面页面
    @RequestMapping(value = "/toUserPassword")
    public String toUserPassword(){

        return "/ftl/user/user_password";
    }
    //去预约单页面
    @RequestMapping(value = "/toUserListRent")
    public String toUserListRent(){

        return "/ftl/user/user_listrent";
    }
    //去收藏页面
    @RequestMapping(value = "/toUserCollection")
    public String toUserCollection(){

        return "/ftl/user/user_collection";
    }
    //去已租房源界面
    @RequestMapping(value = "/toUserToListRent")
    public String toUserToListRent(){

        return "/ftl/user/user_tolistrent";
    }
    //去我的房源界面
    @RequestMapping(value = "/toUserHouse")
    public String toUserHouse(){

        return "/ftl/user/user_house";
    }
    //去发布房源界面
    @RequestMapping(value = "/toUseraddhouse")
    public String toUseraddhouse(){

        return "/ftl/user/user_addhouse";
    }
    //去更换业务员页面
    @RequestMapping(value = "/toUserUpdetaHouseEmp")
    public String toUserUpdetaHouseEmp(){

        return "/ftl/user/user_updatehouseEmp";
    }

}
