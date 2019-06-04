package com.bd05.rent.pojo;
//房子类型表
public class HouseType {
    private long tId;//房子类型编号
    private String tName;//房子类型

    public long gettId() {
        return tId;
    }

    public void settId(long tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }
}
