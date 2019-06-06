package com.bd05.rent.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.bd05.rent.pojo.*;
import com.bd05.rent.service.RentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("Rent")
public class RentController {

    @Resource
    private RentService service;

    @RequestMapping("/toUserListRent")
    public String toUserListRent(Model model,  HttpServletRequest request){

        User user=(User)request.getSession().getAttribute("user");
        long userId=6;
        List<House>hList=service.queryHouse();
        List<HouseType>htList=service.queryHouseType();
        List<Emp>eList=service.getEmp();

        model.addAttribute("pageInfo",service.queryById(userId,1,11));
        model.addAttribute("eList",eList);
        model.addAttribute("hList",hList);
        model.addAttribute("htList",htList);

        return "/ftl/user/user_listrent";
    }



    @RequestMapping("/query")
    public String toUserListRent02(Model model,
                                   @RequestParam(value = "pageNo",defaultValue ="1 ")int pageNo,
                                   @RequestParam(value = "pageSize",defaultValue ="11 ")int pageSize,
                                   HttpServletRequest request){

        User user=(User)request.getSession().getAttribute("user");
        long userId=6;
        List<House>hList=service.queryHouse();
        List<HouseType>htList=service.queryHouseType();
        List<Emp>eList=service.getEmp();

        model.addAttribute("pageInfo",service.queryById(userId,pageNo,pageSize));
        model.addAttribute("eList",eList);
        model.addAttribute("hList",hList);
        model.addAttribute("htList",htList);

        return "/ftl/user/user_listrent";
    }


    @RequestMapping("/hsj")
    public String toUserListRent02(Model model){



        return "/ftl/user/user_listrent";
    }



    @RequestMapping("/delRent")
    public String delRent(Model model, @RequestParam("id")int id ){

        long ids=id;
        int n=service.delRent(ids);

        if(n>0){
            return "redirect:/Rent/query";
        }else{
            return "sas";
        }


    }




    @RequestMapping("/toUserToListRent")
    public String toUserToListRent(Model model,  HttpServletRequest request){

        User user=(User)request.getSession().getAttribute("user");
        long userId=6;
        List<House>hList=service.queryHouse();
        List<HouseType>htList=service.queryHouseType();
        List<Emp>eList=service.getEmp();

        model.addAttribute("pageInfo",service.queryByIds(userId,1,11));
        model.addAttribute("eList",eList);
        model.addAttribute("hList",hList);
        model.addAttribute("htList",htList);

        return "/ftl/user/user_tolistrent";
    }



    @RequestMapping("/queryTo")
    public String toUserToListRent02(Model model,
                                   @RequestParam(value = "pageNo",defaultValue ="1 ")int pageNo,
                                   @RequestParam(value = "pageSize",defaultValue ="11 ")int pageSize,
                                   HttpServletRequest request){

        User user=(User)request.getSession().getAttribute("user");
        long userId=6;
        List<House>hList=service.queryHouse();
        List<HouseType>htList=service.queryHouseType();
        List<Emp>eList=service.getEmp();

        model.addAttribute("pageInfo",service.queryByIds(userId,pageNo,pageSize));
        model.addAttribute("eList",eList);
        model.addAttribute("hList",hList);
        model.addAttribute("htList",htList);

        return "/ftl/user/user_tolistrent";
    }


    @RequestMapping("/tuiRent")
    public String tuiRent(Model model,@RequestParam("id")int id ){
        long ids=id;
        int n=service.tuiRent(ids);

        if(n>0){
            return "redirect:/Rent/redirect:/Rent/queryTo";
        }else{
            return "sas";
        }


    }



    /*异步删除 不实用
    @RequestMapping("/del")
    @ResponseBody
    public String delRent2(@RequestParam("id")int id ){
        long ids=id;

        int n=service.delRent(ids);

        System.out.println(n);
        return JSON.toJSONString(n, SerializerFeature.PrettyFormat);


    }*/
}
