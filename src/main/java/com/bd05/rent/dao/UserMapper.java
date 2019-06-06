package com.bd05.rent.dao;

import com.bd05.rent.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    User LoginUser(User user);//登陆
    User queryById(long id);//根据id查询实体对象
    int updateUser(User user);//完善个人信息

    int addUser(int id);//新增
    int deleteUserGetUpdate(int id);//修改状态
    List<User> queryUser();//输出全部
    int countUser(int id);//count求和
    //修改密码
    int updetaPassword(@Param("pwd") String pwd, @Param("id") long id, @Param("oldpassword") String oldpassword);

    /**
     * 新增用户
     * @param user
     * @return
     */
   int  addUser(User user);
}
