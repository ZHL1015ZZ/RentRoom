package com.bd05.rent.controller;

import com.bd05.rent.pojo.AddHouse;
import com.bd05.rent.pojo.House;
import com.bd05.rent.service.EmpService;
import com.bd05.rent.service.HouseTypeService;
import com.bd05.rent.service.UserHouseService;
import com.bd05.rent.utils.TencentCOS;
import com.github.pagehelper.PageInfo;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Map;

@Controller
@RequestMapping(value = "/userHouse")
public class UserHouseController {
    @Resource
    private UserHouseService userHouseService;
    @Resource
    private EmpService empService;

    @Resource
    private HouseTypeService houseTypeService;

     //个人页面去 我的房源页面
    @RequestMapping(value = "/toUserHouse")
    private String queryAllMyHouseById(Model model,long uid,@RequestParam(value = "state",defaultValue="0")int state,
                                       @RequestParam(value = "pageNo",defaultValue="1")int pageNo,
                                       @RequestParam(value ="pageSize",defaultValue = "10")int pageSize){
        PageInfo<House> house = userHouseService.queryAllMyHouseById(uid, state, pageNo, pageSize);
        model.addAttribute("pageInfo",house);
        model.addAttribute("uid",uid);
        model.addAttribute("state",state);
        return "/ftl/user/user_house";
    }
    //去发布房源页面
    @RequestMapping(value = "/toUseraddhouse")
    public String toUseraddhouse(Model model)  {
        model.addAttribute("houseTypes",houseTypeService.queryAllHouseType());
        model.addAttribute("emps",empService.queryAllEmpByIdByGeade());
        return "/ftl/user/user_addhouse";
    }
    //发布房源
    @RequestMapping(value = "/doUseraddhouse")
    public String toUseraddhouse(AddHouse a,
                                 @RequestParam(value = "tu1",required = false) MultipartFile multfile1,
                                 @RequestParam(value = "tu2",required = false) MultipartFile multfile2,
                                 @RequestParam(value = "tu3",required = false) MultipartFile multfile3,
                                 @RequestParam(value = "tu4",required = false) MultipartFile multfile4,
                                 @RequestParam(value = "tu5",required = false) MultipartFile multfile5,
                                 Map<String, Object> map, HttpSession session) throws Exception {
        //依次判断是否为空，并且进行存储操作
        // 第一步：获取文件后缀
        // 获取文件名
        if(multfile1!=null){
            String fileName1 = multfile1.getOriginalFilename();
            if(fileName1!=null && (!fileName1.equals(""))){
                String prefix = fileName1.substring(fileName1.lastIndexOf("."));
                final File excelFile = File.createTempFile("imagesFile-" + System.currentTimeMillis(), prefix);
                // 将MultipartFile转为File
                multfile1.transferTo(excelFile);
                //调用腾讯云工具上传文件
                fileName1 = TencentCOS.uploadfile(excelFile);
                a.setP1(fileName1);
                //程序结束时，删除临时文件
                // TencentCOS.deletefile(excelFile);
                //存入图片名称，用于网页显示
                map.put("imageName1", fileName1);
            }
        }
        if(multfile2!=null){
            String fileName2 = multfile2.getOriginalFilename();
            if(fileName2!=null && (!fileName2.equals(""))){
                String prefix = fileName2.substring(fileName2.lastIndexOf("."));
                final File excelFile = File.createTempFile("imagesFile-" + System.currentTimeMillis(), prefix);
                // 将MultipartFile转为File
                multfile2.transferTo(excelFile);
                //调用腾讯云工具上传文件
                fileName2 = TencentCOS.uploadfile(excelFile);
                a.setP2(fileName2);
                //程序结束时，删除临时文件
                // TencentCOS.deletefile(excelFile);
                //存入图片名称，用于网页显示
                map.put("imageName2", fileName2);
            }
        }
        if(multfile3!=null){
            String fileName3 = multfile3.getOriginalFilename();
            if(fileName3!=null && (!fileName3.equals(""))){
                String prefix = fileName3.substring(fileName3.lastIndexOf("."));
                final File excelFile = File.createTempFile("imagesFile-" + System.currentTimeMillis(), prefix);
                // 将MultipartFile转为File
                multfile3.transferTo(excelFile);
                //调用腾讯云工具上传文件
                fileName3 = TencentCOS.uploadfile(excelFile);
                a.setP3(fileName3);
                //程序结束时，删除临时文件
                // TencentCOS.deletefile(excelFile);
                //存入图片名称，用于网页显示
                map.put("imageName3", fileName3);
            }
        }
        if(multfile4!=null){
            String fileName4 = multfile4.getOriginalFilename();
            if(fileName4!=null && (!fileName4.equals(""))){
                String prefix = fileName4.substring(fileName4.lastIndexOf("."));
                final File excelFile = File.createTempFile("imagesFile-" + System.currentTimeMillis(), prefix);
                // 将MultipartFile转为File
                multfile4.transferTo(excelFile);
                //调用腾讯云工具上传文件
                fileName4 = TencentCOS.uploadfile(excelFile);
                a.setP4(fileName4);
                //程序结束时，删除临时文件
                // TencentCOS.deletefile(excelFile);
                //存入图片名称，用于网页显示
                map.put("imageName4", fileName4);
            }
        }
        if(multfile5!=null){
            String fileName5 = multfile5.getOriginalFilename();
            if(fileName5!=null && (!fileName5.equals(""))){
                String prefix = fileName5.substring(fileName5.lastIndexOf("."));
                final File excelFile = File.createTempFile("imagesFile-" + System.currentTimeMillis(), prefix);
                // 将MultipartFile转为File
                multfile5.transferTo(excelFile);
                //调用腾讯云工具上传文件
                fileName5 = TencentCOS.uploadfile(excelFile);
                a.setP5(fileName5);
                //程序结束时，删除临时文件
                // TencentCOS.deletefile(excelFile);
                //存入图片名称，用于网页显示
                map.put("imageName5", fileName5);
            }
        }
        //返回图片名称
        int n=userHouseService.addHouse(a);
        if (n==1) {
            session.setAttribute("success", "添加成功");
            session.setMaxInactiveInterval(2);
            return "/ftl/user/user_addhouse";
        }else {
            session.setAttribute("error", "添加失败");
            session.setMaxInactiveInterval(2);
            return "/ftl/user/user_addhouse";
        }


    }

}
