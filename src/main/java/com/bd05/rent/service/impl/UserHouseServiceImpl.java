package com.bd05.rent.service.impl;

import com.bd05.rent.dao.UserHouseMapper;
import com.bd05.rent.pojo.AddHouse;
import com.bd05.rent.pojo.House;
import com.bd05.rent.service.UserHouseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class UserHouseServiceImpl implements UserHouseService {
    @Resource
    private UserHouseMapper mapping;
    //房东查看个人房源
    public PageInfo<House> queryAllMyHouseById(long id, int state,Integer page,Integer size) {
        PageHelper.startPage(page,size);
        List<House> houses = mapping.queryAllMyHouseById(id, state);
        PageInfo<House> pageInfo = new PageInfo<>(houses);
        return pageInfo;
    }

    //发布房源
    public int addHouse(AddHouse addHouse) {
        return mapping.addHouse(addHouse);
    }

}
