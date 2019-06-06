package com.bd05.rent.dao;

import com.bd05.rent.pojo.Emp;
import com.bd05.rent.pojo.House;
import com.bd05.rent.pojo.HouseType;
import com.bd05.rent.pojo.Rent;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RentList {

    //查询所有员工集合
    List<Emp> getEmp();

    //查询所有房子类型集合
    List<HouseType> queryHouseType();

    //查询所有房子进而根据房子类型找出业务员编号
    List<House> queryHouse();

    //删除订单
    int delRent(@Param("id") long id);



    //查询我的订单信息表预约
    List<Rent> queryRent(@Param("userId") long userId);

    //查询我的订单信息表退房
    List<Rent> queryRents(@Param("userId") long userId);

    //退房
    int tuiRent(@Param("id") long id);
}
