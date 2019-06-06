package com.bd05.rent.service;

import com.bd05.rent.pojo.User;

public interface UserService {

    User LoginUser(User user);//登陆
    User queryById(long id);//根据id查询实体对象
    boolean updateUser(User user);//完善个人信息

    /**
     * 修改密码
     * @param pwd
     * @param id
     * @return
     */
    boolean updetaPassword(String pwd, long id, String oldpassword);

    /**
     * 新增用户
     * @param user
     * @return
     */
    int  addUser(User user);
}
