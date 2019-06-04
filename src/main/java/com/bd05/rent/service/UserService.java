package com.bd05.rent.service;

import com.bd05.rent.pojo.Emp;
import com.bd05.rent.pojo.User;
import com.github.pagehelper.PageInfo;

public interface UserService {
    User detailUser(long id);
    PageInfo<Emp> queryAllEmp(Integer page, Integer size);
}
