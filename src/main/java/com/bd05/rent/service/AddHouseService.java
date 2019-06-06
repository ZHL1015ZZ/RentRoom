package com.bd05.rent.service;

import com.bd05.rent.pojo.AddHouse;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddHouseService {

  PageInfo<AddHouse> queryAllAddHouseByEmp_Grade(Integer page, Integer size, long empId, long tid,
                                                 String phone, String name, int grade);

}
