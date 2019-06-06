package com.bd05.rent.service;

import com.bd05.rent.pojo.AddHouse;
import com.bd05.rent.pojo.House;
import com.github.pagehelper.PageInfo;

public interface UserHouseService {
    /**
     *  我的房源
     * @param id
     * @return
     */
   PageInfo<House> queryAllMyHouseById(long id, int state, Integer page, Integer size);

    /**
     * 朱虎龙
     * @param addHouse
     * @return
     * 房东添加房源上线申请
     * 个人中心----我的房源  ， 发布房源
     */
    int addHouse(AddHouse addHouse);

}
