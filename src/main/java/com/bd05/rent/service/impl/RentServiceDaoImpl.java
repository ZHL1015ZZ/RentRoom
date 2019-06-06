package com.bd05.rent.service.impl;

import com.bd05.rent.dao.RentList;
import com.bd05.rent.pojo.Emp;
import com.bd05.rent.pojo.House;
import com.bd05.rent.pojo.HouseType;
import com.bd05.rent.pojo.Rent;
import com.bd05.rent.service.RentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RentServiceDaoImpl implements RentService {

    @Resource
    private RentList dao;


    @Override
    public PageInfo<Rent> queryById(long userId, Integer page, Integer size) {
        PageHelper.startPage(page,size);
        List<Rent> nList=dao.queryRent(userId);
        PageInfo<Rent> pageInfo=new PageInfo<>(nList);
        return pageInfo;
    }

    @Override
    public List<Emp> getEmp() {
        return dao.getEmp();
    }


    @Override
    public List<HouseType> queryHouseType() {
        List<HouseType> htList=dao.queryHouseType();

        return htList;
    }

    @Override
    public List<House> queryHouse() {
        List<House> hList=dao.queryHouse();
        return hList;
    }

    @Override
    public int delRent(long id) {

        return dao.delRent(id);
    }

    @Override
    public PageInfo<Rent> queryByIds(long userId, Integer page, Integer size) {
        PageHelper.startPage(page,size);
        List<Rent> nList=dao.queryRents(userId);
        PageInfo<Rent> pageInfo=new PageInfo<>(nList);
        return pageInfo;
    }

    @Override
    public int tuiRent(long id) {
        return dao.tuiRent(id);
    }
}
