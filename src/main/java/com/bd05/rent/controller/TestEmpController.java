package com.bd05.rent.controller;

import com.bd05.rent.pojo.Emp;
import com.bd05.rent.service.EmpService;
import com.bd05.rent.service.impl.EmpServiceImpl;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("emp")
public class TestEmpController {
    @Resource
    private EmpServiceImpl service;

    //去员工登录页面
    @RequestMapping("/tologin")
    public String toLogin(){
        return "login";
    }

    //登录成功后去后台页面
    @RequestMapping("/toframe")
    public String toframe(Emp emp, HttpSession session){

        Emp e=service.login(emp);

        if(e!=null){
            System.out.println("键入了要保存的对象");
            System.out.println(e.getId());
            session.setAttribute("mess","登录成功");
            //session.setMaxInactiveInterval(2);
            session.setAttribute("empp",service.login(emp));
            //session.setMaxInactiveInterval(60*60);
            return "frame";
        }else{
            session.setAttribute("mess","账号或密码错误");
            session.setMaxInactiveInterval(2);
        }
        return "frame";
    }

    //后台页面首页显示
    @RequestMapping(value = "/toqdAPI")
    public String toqdAPI(){

        return "/ftl/qdAPI";
    }
    //修改密码页面
    @RequestMapping(value = "/toempPassword")
    public String toempPassword(){

        return "/ftl/emp/emp_password";
    }

    //去员工资料页面
    @RequestMapping(value = "/toempList")
    /*public String toempList(@RequestParam(value = "pageNo",defaultValue="1")int pageNo,
                            @RequestParam(value ="pageSize",defaultValue = "1")int pageSize, Model model){
           model.addAttribute("pageInfo",service.queryAllEmp(pageNo,pageSize));
        return "/ftl/emp/emp_list";
    }*/
    public String toempList(@RequestParam(value = "pageNo",defaultValue="1")int pageNo,
                            @RequestParam(value ="pageSize",defaultValue = "1")int pageSize, Model model,
                            @RequestParam(value = "name",required = false)String name,
                            @RequestParam(value = "empId",required = false)String empId,
                            @RequestParam(value = "isDel",defaultValue="0")int isDel,
                            @RequestParam(value = "grade",defaultValue="0")int grade
    ) {
        model.addAttribute("pageInfo", service.getAllEmp( name, empId,isDel,grade,pageNo, pageSize));
        model.addAttribute("name",name);
        model.addAttribute("empId",empId);
        model.addAttribute("isDel",isDel);
        model.addAttribute("grade",grade);
        return "/ftl/emp/emp_list";
    }

        //去新增员工资料页面
    @RequestMapping(value = "/toempAdd")
    public String toempAdd(){

        return "/ftl/emp/emp_add";
    }
    //新增员工
    @RequestMapping("toAddEmp")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public String addEmp(Emp emp,@RequestParam("date")String date, HttpSession session){
        Date date1=new Date();
        SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
        try {
            date1 =sdf.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        emp.setBirthday(date1);
        int n=service.addEmp(emp);
        if (n==1) {
            session.setAttribute("mess", "添加成功");
            session.setMaxInactiveInterval(2);
            return "/ftl/emp/emp_add";
        }else {
            session.setAttribute("mess", "添加失败");
            session.setMaxInactiveInterval(2);
            return "/ftl/emp/emp_add";
        }

    }
    @RequestMapping("toMaintainUser_list")
    public String toempList(@RequestParam(value = "pageNo",defaultValue="1")int pageNo,
                            @RequestParam(value ="pageSize",defaultValue = "3")int pageSize, Model model,
                            @RequestParam(value = "name",required = false)String name,
                            @RequestParam(value = "isDel",defaultValue="1")int isDel
    ) {
        model.addAttribute("pageInfo", service.queryAllUser( name,isDel,pageNo, pageSize));
        model.addAttribute("name",name);
        model.addAttribute("isDel",isDel);
        return "/ftl/maintainUser/maintainUser_list";
    }

    //去一个员工基本资料页面
    @RequestMapping(value = "/toempDetail")
    public String toempDetail(){

        return "/ftl/emp/emp_detail";
    }
    //去修改员工资料页面
    @RequestMapping(value = "/toempUptate")
    public String toempUptate(){

        return "/ftl/emp/emp_update";
    }


    //去审批员工资料页面
    @RequestMapping(value = "/toReferendunempUptate")
    public String toReferendunempUptate(){

        return "/ftl/emp/referendun_empupdate";
    }

    @RequestMapping("queryEmpUserList")
    public String queryEmpUserList(@RequestParam(value = "pageNo",defaultValue="1")int pageNo,
                                   @RequestParam(value ="pageSize",defaultValue = "1")int pageSize, Model model,
                                   @RequestParam(value = "empId",required = false)String empId,
                                   @RequestParam(value = "name",required = false)String name){
        model.addAttribute("pageInfo", service.queryUserCountByEmp( name,empId,pageNo, pageSize));
        model.addAttribute("empId",empId);
        System.out.println(empId);
        System.out.println(name);
        model.addAttribute("name",name);
        model.addAttribute("cTime",new Date());
        return "/ftl/query/queryEmpUserList";
    }


}
