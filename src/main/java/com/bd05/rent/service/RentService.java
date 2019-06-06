package com.bd05.rent.service;

import com.bd05.rent.pojo.Emp;
import com.bd05.rent.pojo.House;
import com.bd05.rent.pojo.HouseType;
import com.bd05.rent.pojo.Rent;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RentService {
    //查询我的订单信息表 预约
    PageInfo<Rent> queryById(long userId, Integer page, Integer size);

    //查询所有员工集合
    List<Emp> getEmp();

    //查询所有房子类型集合
    List<HouseType> queryHouseType();

    //查询所有房子进而根据房子类型找出业务员编号
    List<House> queryHouse();

    //删除订单
    int delRent(long id);

    //查询我的订单信息表 退房
    PageInfo<Rent> queryByIds(long userId, Integer page, Integer size);

    //退房
    int tuiRent(@Param("id") long id);
}
