package com.bd05.rent.dao;

import com.bd05.rent.pojo.AddHouse;
import com.bd05.rent.pojo.House;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 琚阳阳
 * 个人中心----我的房源  ， 发布房源
 */
public interface UserHouseMapper {
    List<House> queryAllMyHouseById(@Param(value = "id") long id, @Param(value = "state") int state);

    /**
     * 朱虎龙
     * @param addHouse
     * @return
     * 房东添加房源上线申请
     * 个人中心----我的房源  ， 发布房源
     */
    int addHouse(AddHouse addHouse);

}
