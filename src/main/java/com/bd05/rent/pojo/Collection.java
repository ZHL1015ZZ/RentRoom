package com.bd05.rent.pojo;

import java.util.Date;

//租户收藏房间表
public class Collection {

    private long id;//收藏表主键id
    private long houseId;//房间编号
    private long userId;//租户id、
    private int isDel;//是否删除（1不删除 2删除）
    private Date cDate;//收藏的时间，即何时收藏的

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getHouseId() {
        return houseId;
    }

    public void setHouseId(long houseId) {
        this.houseId = houseId;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public int getIsDel() {
        return isDel;
    }

    public void setIsDel(int isDel) {
        this.isDel = isDel;
    }

    public Date getcDate() {
        return cDate;
    }

    public void setcDate(Date cDate) {
        this.cDate = cDate;
    }
}
