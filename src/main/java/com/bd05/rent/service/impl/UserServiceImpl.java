package com.bd05.rent.service.impl;

import com.bd05.rent.dao.UserMapper;
import com.bd05.rent.pojo.User;
import com.bd05.rent.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper dao;


    @Override
    public User LoginUser(User user) {
        return dao.LoginUser(user);
    }

    @Override
    public User queryById(long id) {
        return dao.queryById(id);
    }

    @Override
    public boolean updateUser(User user) {
        int i = dao.updateUser(user);
        if(i>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean updetaPassword(String pwd, long id,String oldpassword) {
        if(dao.updetaPassword(pwd,id,oldpassword)>0){
            return true;
        }
        return false;
    }

    @Override
    public int addUser(User user) {

        return dao.addUser(user);
    }
}
