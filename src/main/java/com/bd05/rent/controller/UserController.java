package com.bd05.rent.controller;

import com.bd05.rent.pojo.User;
import com.bd05.rent.service.impl.UserServiceImpl;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@Controller
@RequestMapping("user")
public class UserController {

    @Resource
    private UserServiceImpl userService;


    //去用户登陆页面
    @RequestMapping(value = "/toLoginUser")
    public  String toLoginUser(){
        return "login-user";
    }
    //去个人中心---查修个人资料页面
    @RequestMapping(value = "/doDetailUser")
    public String doDetailUser(HttpSession session){

        session.setAttribute("user", userService.queryById( ((User) session.getAttribute("user")).getId()));
        return "ftl/user/user_detail";
    }







    //去个人中心
    @RequestMapping(value = "/toframeUser")
    public String toframeUser(){
        return "frame_user";
    }



    @RequestMapping("dologin")
    //User登陆方法
    public String loginUser(String name1, String pwd1, Model model, HttpSession session){
        User user = new User();
        int n = name1.indexOf("@");
        if(n<0){
            user.setPhone(name1);
            user.setPwd(pwd1);
        }else{
            user.setEmail(name1);
            user.setPwd(pwd1);
        }
        User user1 = userService.LoginUser(user);
        if(user1==null){
            model.addAttribute("error","1");
            return "login-user";
        }else{
            session.setAttribute("user",user1);
            session.setMaxInactiveInterval(60*60);
            return "redirect:/";
        }

    }
    //去修改页面
    @RequestMapping(value = "/touserUpdate")
    public String touserUpdate(){
        return "/ftl/user/user_update";
    }

    //执行完善信息
    @RequestMapping(value = "/doUserUpdate",method = RequestMethod.POST)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    public String doUserUpdate(User user, Model model, String birthday1){
        SimpleDateFormat sdf  = new SimpleDateFormat("yyyy-MM-dd");
        try {
            user.setBirthday(sdf.parse(birthday1));
            boolean updateUser = userService.updateUser(user);
            if(updateUser){
                model.addAttribute("updateUser",updateUser );
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
         return "/ftl/user/user_detail";
    }
    //去修改密码页面
    @RequestMapping(value = "toUserPassword")
    public String toUserPassword(){
        return "/ftl/user/user_password";
    }

    //执行修改方法
    @RequestMapping(value = "/doUserPassword",method = RequestMethod.POST)
    public String doUserPassword(long id, String pwd, String oldpassword, RedirectAttributes redirect, Model model, HttpServletResponse response){
        boolean updatePassword = userService.updetaPassword(pwd, id,oldpassword);
        response.setCharacterEncoding("UTF-8");
        if(updatePassword){
            try {

                PrintWriter out = response.getWriter();
                out.print("<script>parent.location.href='/user/toLoginUser'</script>");
                out.print("<script>alert('修改密码成功,请重新登录')</script>");
                return "login-user";
            } catch (IOException e) {
                e.printStackTrace();
            }
        }else{
            model.addAttribute("error","1");
        }
        return "/ftl/user/user_password";
    }
    //新增用户
    @RequestMapping(value="/doAddUser",method = RequestMethod.POST)
    public String doAddUser(User user,Model model,HttpServletResponse response){
        response.setCharacterEncoding("UTF-8");
        if(userService.addUser(user)>0){
             model.addAttribute("error","3") ;
            try {
                PrintWriter out = response.getWriter();
                out.print("<script>alert('注册成功！快来选择您喜欢的吧');</script>");
                return "login-user";
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "login-user#toregister";
    }


}
