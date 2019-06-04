package com.bd05.rent.pojo;

import java.util.Date;
import java.util.List;

//租户表
public class User {

    private long id;//房东编号
    private String name,phone,email,idCard;//姓名，手机号，邮箱，身份证
    private Date birthday;//生日
    private int isDel;//是否与公司解约
    private String pwd;//密码
    private int gender;//性别（1男 2女）
    //该表涉及到用户的收藏表
    private List<Collection> collectionList;


    public List<Collection> getCollectionList() {
        return collectionList;
    }

    public void setCollectionList(List<Collection> collectionList) {
        this.collectionList = collectionList;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getIsDel() {
        return isDel;
    }

    public void setIsDel(int isDel) {
        this.isDel = isDel;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

}
