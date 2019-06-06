package com.bd05.rent.controller;

import com.bd05.rent.pojo.Emp;
import com.bd05.rent.service.AddHouseService;
import com.bd05.rent.service.HouseTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value="/addHouse")
public class AddhouseController {
    @Resource
    private AddHouseService addHouseService;
    @Resource
    private HouseTypeService houseTypeService;
    //员工 去审批房源信息页面
    @RequestMapping(value = "/toReferendumHouseList")
    public String toReferendumHouseList2(
            @RequestParam(value = "pageNo",defaultValue = "1")int pageNo,
            @RequestParam(value = "pageSize",defaultValue = "5")int pageSize,
            Model model, HttpServletRequest request,
            @RequestParam(value = "name",required = false) String name,
            @RequestParam(value = "phone",required = false) String phone,
            @RequestParam(value = "tid",defaultValue = "0") Long tid){
        Emp emp = (Emp) request.getSession().getAttribute("empp");
        int grade = emp.getGrade();
        long empId = emp.getId();
        model.addAttribute("pageInfo",
                addHouseService.queryAllAddHouseByEmp_Grade(pageNo,pageSize,empId,tid,phone,name,grade));
        model.addAttribute("name",name);
        model.addAttribute("phone",phone);
        model.addAttribute("tid",tid);
        model.addAttribute("houseType",houseTypeService.queryAllHouseType());
        return "/ftl/house/referendum_houselist";
    }
    @RequestMapping(value = "/toReferendumAddHouse")
    public  String toReferendumAddHouse(){
        return  "/ftl/house/referendum_addhouse";
    }


}
