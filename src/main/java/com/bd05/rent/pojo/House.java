package com.bd05.rent.pojo;

import java.util.Date;

//房源表
public class House {

    private long id,hType;//编号，房子类型遍号
    private double area; //面积
    private int direction,rentType,room;//房子朝向，出租类型编号（1.整租 2.合租），房间编号（整租的房子默认编号为1）
    private  long holderId;//房东编号
    private double priceMonth;//月租金
    private int rentState,isDel;//出租状态（1.待出租 2正在出租），是否停止出租（1.不停止 2 停止）
    private double yajin;//押金
    private String address;//地址
    private Date delDate;//房子停止出租日期
    private String delReason;//停止出租的原因
    private int isHaveLift;//是否有电梯(0无 1有)
    private Date addDate;//房子上线日期
    private int addState ,isCar;//房子上线审核状态（1.待审核 2.通过 3.拒绝），是否有车位
    private long empId;//业务员编号
    private int isFur,isAir,isIce,isTV,isWifi;//是否有家具，空调，冰箱，电视，无线网（0无，1有）
    private String read;//房东备注，也就是要求，如：不许养宠物等

    //由于该表涉及到emp，picture,user,houseType表，所以使用vo写法
    private HouseType houseType;//由房子类型表得到房子类型名称
    private Emp emp;//由员工表得到业务员信息
    private User user;//由用户表得到房东个人信息

    private String p1,p2,p3,p4,p5;//图片

    public String getP1() {
        return p1;
    }

    public void setP1(String p1) {
        this.p1 = p1;
    }

    public String getP2() {
        return p2;
    }

    public void setP2(String p2) {
        this.p2 = p2;
    }

    public String getP3() {
        return p3;
    }

    public void setP3(String p3) {
        this.p3 = p3;
    }

    public String getP4() {
        return p4;
    }

    public void setP4(String p4) {
        this.p4 = p4;
    }

    public String getP5() {
        return p5;
    }

    public void setP5(String p5) {
        this.p5 = p5;
    }

    public HouseType getHouseType() {
        return houseType;
    }

    public void setHouseType(HouseType houseType) {
        this.houseType = houseType;
    }

    public Emp getEmp() {
        return emp;
    }

    public void setEmp(Emp emp) {
        this.emp = emp;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public long getEmpId() {
        return empId;
    }

    public void setEmpId(long empId) {
        this.empId = empId;
    }

    public int getIsFur() {
        return isFur;
    }

    public void setIsFur(int isFur) {
        this.isFur = isFur;
    }

    public int getIsAir() {
        return isAir;
    }

    public void setIsAir(int isAir) {
        this.isAir = isAir;
    }

    public int getIsIce() {
        return isIce;
    }

    public void setIsIce(int isIce) {
        this.isIce = isIce;
    }

    public int getIsTV() {
        return isTV;
    }

    public void setIsTV(int isTV) {
        this.isTV = isTV;
    }

    public int getIsWifi() {
        return isWifi;
    }

    public void setIsWifi(int isWifi) {
        this.isWifi = isWifi;
    }

    public String getRead() {
        return read;
    }

    public void setRead(String read) {
        this.read = read;
    }

    public double getYajin() {
        return yajin;
    }

    public void setYajin(double yajin) {
        this.yajin = yajin;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long gethType() {
        return hType;
    }

    public void sethType(long hType) {
        this.hType = hType;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public int getDirection() {
        return direction;
    }

    public void setDirection(int direction) {
        this.direction = direction;
    }

    public int getRentType() {
        return rentType;
    }

    public void setRentType(int rentType) {
        this.rentType = rentType;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    public long getHolderId() {
        return holderId;
    }

    public void setHolderId(long holderId) {
        this.holderId = holderId;
    }

    public double getPriceMonth() {
        return priceMonth;
    }

    public void setPriceMonth(double priceMonth) {
        this.priceMonth = priceMonth;
    }

    public int getRentState() {
        return rentState;
    }

    public void setRentState(int rentState) {
        this.rentState = rentState;
    }

    public int getIsDel() {
        return isDel;
    }

    public void setIsDel(int isDel) {
        this.isDel = isDel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getDelDate() {
        return delDate;
    }

    public void setDelDate(Date delDate) {
        this.delDate = delDate;
    }

    public String getDelReason() {
        return delReason;
    }

    public void setDelReason(String delReason) {
        this.delReason = delReason;
    }

    public int getIsHaveLift() {
        return isHaveLift;
    }

    public void setIsHaveLift(int isHaveLift) {
        this.isHaveLift = isHaveLift;
    }

    public Date getAddDate() {
        return addDate;
    }

    public void setAddDate(Date addDate) {
        this.addDate = addDate;
    }

    public int getAddState() {
        return addState;
    }

    public void setAddState(int addState) {
        this.addState = addState;
    }

    public int getIsCar() {
        return isCar;
    }

    public void setIsCar(int isCar) {
        this.isCar = isCar;
    }
}
