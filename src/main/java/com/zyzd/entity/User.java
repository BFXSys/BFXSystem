package com.zyzd.entity;

/**
 * 用户实体类
 * @author 王凯
 */
public class User {

    private Integer id;
    private String jobNum;
    private String workerName;
    private String sex;
    private String userNation;
    private String education;
    private String identityNum;
    private String phone;
    private String email;
    private String domicile;
    private String bankNum;
    private String entryTime;
    private String workType;
    private String dormRoomNum;
    private String position;
    private String createTime;
    private String userPassword;

    public User() {
    }

    public User(Integer id, String jobNum, String workerName, String sex, String userNation, String education, String identityNum, String phone, String email, String domicile, String bankNum, String entryTime, String workType, String dormRoomNum, String position, String createTime, String userPassword) {
        this.id = id;
        this.jobNum = jobNum;
        this.workerName = workerName;
        this.sex = sex;
        this.userNation = userNation;
        this.education = education;
        this.identityNum = identityNum;
        this.phone = phone;
        this.email = email;
        this.domicile = domicile;
        this.bankNum = bankNum;
        this.entryTime = entryTime;
        this.workType = workType;
        this.dormRoomNum = dormRoomNum;
        this.position = position;
        this.createTime = createTime;
        this.userPassword = userPassword;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJobNum() {
        return jobNum;
    }

    public void setJobNum(String jobNum) {
        this.jobNum = jobNum;
    }

    public String getWorkerName() {
        return workerName;
    }

    public void setWorkerName(String workerName) {
        this.workerName = workerName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUserNation() {
        return userNation;
    }

    public void setUserNation(String userNation) {
        this.userNation = userNation;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getIdentityNum() {
        return identityNum;
    }

    public void setIdentityNum(String identityNum) {
        this.identityNum = identityNum;
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

    public String getDomicile() {
        return domicile;
    }

    public void setDomicile(String domicile) {
        this.domicile = domicile;
    }

    public String getBankNum() {
        return bankNum;
    }

    public void setBankNum(String bankNum) {
        this.bankNum = bankNum;
    }

    public String getEntryTime() {
        return entryTime;
    }

    public void setEntryTime(String entryTime) {
        this.entryTime = entryTime;
    }

    public String getWorkType() {
        return workType;
    }

    public void setWorkType(String workType) {
        this.workType = workType;
    }

    public String getDormRoomNum() {
        return dormRoomNum;
    }

    public void setDormRoomNum(String dormRoomNum) {
        this.dormRoomNum = dormRoomNum;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", jobNum='" + jobNum + '\'' +
                ", workerName='" + workerName + '\'' +
                ", sex='" + sex + '\'' +
                ", userNation='" + userNation + '\'' +
                ", education='" + education + '\'' +
                ", identityNum='" + identityNum + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", domicile='" + domicile + '\'' +
                ", bankNum='" + bankNum + '\'' +
                ", entryTime='" + entryTime + '\'' +
                ", workType='" + workType + '\'' +
                ", dormRoomNum='" + dormRoomNum + '\'' +
                ", position='" + position + '\'' +
                ", createTime='" + createTime + '\'' +
                ", userPassword='" + userPassword + '\'' +
                '}';
    }
}
