package com.bd05.rent.service.impl;

import com.bd05.rent.dao.AddHouseDao;
import com.bd05.rent.pojo.AddHouse;
import com.bd05.rent.service.AddHouseService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AddHouseServiceImpl implements AddHouseService {
    @Resource
    private AddHouseDao addHouseDao;
    @Override
    public PageInfo<AddHouse> queryAllAddHouseByEmp_Grade(Integer page, Integer size,
                                                          long empId, long tid, String phone, String name, int grade) {
        PageHelper.startPage(page,size);
        List<AddHouse> addHouses = addHouseDao.queryAllAddHouseByEmp_Grade(empId, tid, phone, name, grade);
        PageInfo<AddHouse> pageInfo = new PageInfo<>(addHouses);
        return pageInfo;
    }

}
