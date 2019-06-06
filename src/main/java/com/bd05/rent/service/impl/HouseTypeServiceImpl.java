package com.bd05.rent.service.impl;

import com.bd05.rent.dao.HouseTypeDao;
import com.bd05.rent.pojo.HouseType;
import com.bd05.rent.service.HouseTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class HouseTypeServiceImpl  implements HouseTypeService {
    @Resource
    private HouseTypeDao houseTypeDao;

    @Override
    public List<HouseType> queryAllHouseType() {
        return houseTypeDao.queryAllHouseType();
    }

    @Override
    public HouseType detailHouseTypeById(long tid) {
        return houseTypeDao.detailHouseTypeById(tid);
    }

    @Override
    public int queryAllCountHouseType() {
        return houseTypeDao.queryAllCountHouseType();
    }

    @Override
    public int addHouseType(HouseType houseType) {
        return houseTypeDao.addHouseType(houseType);
    }

    @Override
    public int updateHouseType(HouseType houseType) {
        return houseTypeDao.updateHouseType(houseType);
    }

    @Override
    public int deleteHouseType(long tid) {
        return houseTypeDao.deleteHouseType(tid);
    }
}
