package com.bd05.rent.service;

import com.bd05.rent.pojo.HouseType;

import java.util.List;

public interface HouseTypeService {
    /**
     * 查询所有房间类型
     * @return
     */
    List<HouseType> queryAllHouseType();

    /**
     * 根据id 查询出一条房间类型
     * @param tid
     * @return
     */
    HouseType detailHouseTypeById(long tid);

    /**
     * 查询房间类型总数
     * @return
     */
    int queryAllCountHouseType();

    /**
     * 新增一条房间类型
     * @param houseType
     * @return
     */
    int addHouseType(HouseType houseType);

    /**
     * 修改一条房间类型
     * @param houseType
     * @return
     */
    int updateHouseType(HouseType houseType);

    /**
     * 查询一条房间信息
     * @param tid
     * @return
     */
    int deleteHouseType(long tid);
}
