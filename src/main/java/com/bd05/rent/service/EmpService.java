package com.bd05.rent.service;

import com.bd05.rent.pojo.Emp;
import com.bd05.rent.pojo.User;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpService {

    //员工登录
    Emp login (Emp emp);
    //经理查看所有的员工信息
    PageInfo<Emp> queryAllEmp(Integer page, Integer size);
    //经理多条件搜索员工信息
    PageInfo<Emp> getAllEmp (String name, String empId, Integer isDel, Integer grade,Integer page, Integer size);
    //新增员工
    int addEmp(Emp emp);
    //经理查询所有客户
    PageInfo<User> queryAllUser(long empId,String name,Integer isDel,Integer page, Integer size);

    //经理查询员工的客户数量
    PageInfo<Emp> queryUserCountByEmp (@Param("name")String name,@Param("empId")String empId  ,Integer page, Integer size);

    //查询所有员工
    List<Emp> queryAllEmpByIdByGeade();
}
