package com.bd05.rent.dao;

import com.bd05.rent.pojo.AddHouse;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddHouseDao {
    List<AddHouse> queryAllAddHouseByEmp_Grade(
            @Param("empId") long empId,
            @Param("tid") long tid,
            @Param("phone") String phone,
            @Param("name") String name,
            @Param("grade") int grade);

}

