package com.nicklaus.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class RegistrationInfo {
    private int chId;
    private int regId;
    private String chName;
    private long idCard;
    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    private Date regDate;
    private String daTime;
    private String deptName;
    private String regStatus;

    public int getChId() {
        return chId;
    }

    public void setChId(int chId) {
        this.chId = chId;
    }

    public int getRegId() {
        return regId;
    }

    public void setRegId(int regId) {
        this.regId = regId;
    }

    public String getChName() {
        return chName;
    }

    public void setChName(String chName) {
        this.chName = chName;
    }

    public long getIdCard() {
        return idCard;
    }

    public void setIdCard(long idCard) {
        this.idCard = idCard;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getDaTime() {
        return daTime;
    }

    public void setDaTime(String daTime) {
        this.daTime = daTime;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getRegStatus() {
        return regStatus;
    }

    public void setRegStatus(String regStatus) {
        this.regStatus = regStatus;
    }

    @Override
    public String toString() {
        return "RegistrationInfo{" +
                "chId=" + chId +
                ", regId=" + regId +
                ", chName='" + chName + '\'' +
                ", idCard=" + idCard +
                ", regDate=" + regDate +
                ", daTime='" + daTime + '\'' +
                ", deptName='" + deptName + '\'' +
                ", regStatus='" + regStatus + '\'' +
                '}';
    }
}
