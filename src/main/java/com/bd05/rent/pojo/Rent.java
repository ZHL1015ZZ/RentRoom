package com.bd05.rent.pojo;

import java.util.Date;

//订单表
public class Rent {

    private long id,userId,houseId;//订单编号。租户编号，房子编号
    private int rentTime;//租用月数
    private String words;//租户留言备注
    private Date startDate;//下单时间
    private int state;//订单状态（1,.待处理 2.通过，3.拒绝 4取消）
    private Date dealDate,enterDate,leaveDate;//订单处理时间， 入住时间，退房日期
    private int leaveState;//退房状态（1待处理 2同意 3待协商）
    private  int isDel ;//是否删除订单（1 不删除 2删除）



    //该表涉及到user表
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getHouseId() {
        return houseId;
    }

    public void setHouseId(long houseId) {
        this.houseId = houseId;
    }

    public int getRentTime() {
        return rentTime;
    }

    public void setRentTime(int rentTime) {
        this.rentTime = rentTime;
    }

    public String getWords() {
        return words;
    }

    public void setWords(String words) {
        this.words = words;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }


    public Date getEnterDate() {
        return enterDate;
    }

    public void setEnterDate(Date enterDate) {
        this.enterDate = enterDate;
    }

    public Date getLeaveDate() {
        return leaveDate;
    }

    public void setLeaveDate(Date leaveDate) {
        this.leaveDate = leaveDate;
    }

    public int getLeaveState() {
        return leaveState;
    }

    public void setLeaveState(int leaveState) {
        this.leaveState = leaveState;
    }

    public Date getDealDate() {
        return dealDate;
    }

    public void setDealDate(Date dealDate) {
        this.dealDate = dealDate;
    }

    public int getIsDel() {
        return isDel;
    }

    public void setIsDel(int isDel) {
        this.isDel = isDel;
    }
}
