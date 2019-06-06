package com.bd05.rent.dao;

import com.bd05.rent.pojo.Emp;
import com.bd05.rent.pojo.User;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpDao {

    //员工登录
    Emp login (Emp emp);
    //经理查看所有的员工信息
    List<Emp> queryAllEmp();

    //根据条件得到所有的援用信息
    List<Emp> getAllEmp (@Param("name") String name, @Param("empId")String empId, @Param("isDel")Integer isDel,@Param("grade") Integer grade);

    //新增员工
    int addEmp(Emp emp);

    //经理查询所有客户
    List<User> queryAllUser(@Param("empId")long empId,@Param("name")String name,@Param("isDel")Integer isDel);

    //经理查询员工的客户数量
     List<Emp> queryUserCountByEmp (@Param("empId")String empId ,@Param("name")String name);

    //查询所有业务员
    List<Emp> queryAllEmpByIdByGeade();

}
