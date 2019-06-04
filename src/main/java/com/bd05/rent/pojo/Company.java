package com.bd05.rent.pojo;
//公司信息表
public class Company {

    private long id;//主键id
    private String comCard,comName;//公司编号，公司名称
    private String phone;//公司联系电话
    private String  address;//公司地址
    private String info;//公司简介
    private String person;//公司法人名字
    private String perPhone;//公司法人的电话

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getComCard() {
        return comCard;
    }

    public void setComCard(String comCard) {
        this.comCard = comCard;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getPerson() {
        return person;
    }

    public void setPerson(String person) {
        this.person = person;
    }

    public String getPerPhone() {
        return perPhone;
    }

    public void setPerPhone(String perPhone) {
        this.perPhone = perPhone;
    }
}
