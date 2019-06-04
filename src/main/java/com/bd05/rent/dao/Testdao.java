package com.bd05.rent.dao;

import com.bd05.rent.pojo.Emp;
import com.bd05.rent.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface Testdao {
    User detailUser(@Param("id") long id);
    List<Emp> queryAllEmp();
}
