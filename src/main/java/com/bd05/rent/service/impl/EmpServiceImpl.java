package com.bd05.rent.service.impl;

import com.bd05.rent.dao.EmpDao;
import com.bd05.rent.pojo.Emp;
import com.bd05.rent.pojo.User;
import com.bd05.rent.service.EmpService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EmpServiceImpl implements EmpService {

    @Resource
    private EmpDao dao;

    //员工登录
    public Emp login(Emp emp) {
        return dao.login(emp);
    }

    //经理查看所有的员工信息
    public PageInfo<Emp> queryAllEmp(Integer page, Integer size) {
        //开启分页查询，写在查询语句上方
        //只有紧跟在PageHelper.startPage方法后的第一个Mybatis的查询（Select）方法会被分页。
        PageHelper.startPage(page,size);
        List<Emp> listEmp =  dao.queryAllEmp();
        PageInfo<Emp> pageInfo = new PageInfo<>(listEmp);
        return pageInfo;
    }

    @Override
    public PageInfo<Emp> getAllEmp(String name, String empId, Integer isDel, Integer grade, Integer page, Integer size) {
        PageHelper.startPage(page,size);
        List<Emp> listEmp =  dao.getAllEmp(name, empId, isDel, grade);
        System.out.println("集合长度是"+listEmp.size());
        PageInfo<Emp> pageInfo = new PageInfo<>(listEmp);
        return pageInfo;
    }

    @Override
    public int addEmp(Emp emp) {
        return dao.addEmp(emp);
    }

    @Override
    public PageInfo<User> queryAllUser(long empId,String name, Integer isDel,Integer page, Integer size) {
        PageHelper.startPage(page,size);
        List<User> listEmp =  dao.queryAllUser(empId,name, isDel);
        System.out.println("集合长度是"+listEmp.size());
        PageInfo<User> pageInfo = new PageInfo<>(listEmp);
        return pageInfo;
    }

    @Override
    public PageInfo<Emp> queryUserCountByEmp(String name,String empId ,Integer page, Integer size) {
        PageHelper.startPage(page,size);
        List<Emp> listEmp =  dao.queryUserCountByEmp(empId,name);
        System.out.println("集合长度是"+listEmp.size());
        PageInfo<Emp> pageInfo = new PageInfo<>(listEmp);
        return pageInfo;
    }



    @Override
    public List<Emp> queryAllEmpByIdByGeade() {
        return dao.queryAllEmpByIdByGeade();
    }
}
