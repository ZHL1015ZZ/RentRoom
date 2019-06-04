package com.bd05.rent.service.impl;

import com.bd05.rent.dao.Testdao;
import com.bd05.rent.pojo.Emp;
import com.bd05.rent.pojo.User;
import com.bd05.rent.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private Testdao dao;

    @Override
    public User detailUser(long id) {
        return dao.detailUser(id);
    }

    @Override
    public PageInfo<Emp> queryAllEmp(Integer page, Integer size) {
         //开启分页查询，写在查询语句上方
        //只有紧跟在PageHelper.startPage方法后的第一个Mybatis的查询（Select）方法会被分页。
        PageHelper.startPage(page,size);
        List<Emp> listEmp =  dao.queryAllEmp();
        PageInfo<Emp> pageInfo = new PageInfo<>(listEmp);
        return pageInfo;
    }
}
