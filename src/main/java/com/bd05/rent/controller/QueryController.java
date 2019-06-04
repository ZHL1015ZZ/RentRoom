package com.bd05.rent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QueryController {
    //去查询员工绩效页面
    @RequestMapping("/queryByEmpPerformance")
    public  String queryByEmpPerformance(){
        return "/ftl/query/queryEmpPerformanceList";
    }
    //去查询员工客户数量页面
    @RequestMapping("/queryEmpUserList")
    public  String queryEmpUserList(){
        return "/ftl/query/queryEmpUserList";
    }
    //去查询房源状态页面
    @RequestMapping("/queryHouseList")
    public  String queryHouseList(){
        return "/ftl/query/queryHouseList";
    }
}
