package com.nicklaus.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Registration {

    private int regId;
    private int chId;
    private int docId;
    private int levelId;
    private int deptId;
    private String daTime;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date regDate;
    private String regStatus;
    private boolean regIsPaper;

    public int getRegId() {
        return regId;
    }

    public void setRegId(int regId) {
        this.regId = regId;
    }

    public int getChId() {
        return chId;
    }

    public void setChId(int chId) {
        this.chId = chId;
    }

    public int getDocId() {
        return docId;
    }

    public void setDocId(int docId) {
        this.docId = docId;
    }

    public int getLevelId() {
        return levelId;
    }

    public void setLevelId(int levelId) {
        this.levelId = levelId;
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public String getDaTime() {
        return daTime;
    }

    public void setDaTime(String daTime) {
        this.daTime = daTime;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getRegStatus() {
        return regStatus;
    }

    public void setRegStatus(String regStatus) {
        this.regStatus = regStatus;
    }

    public boolean isRegIsPaper() {
        return regIsPaper;
    }

    public void setRegIsPaper(boolean regIsPaper) {
        this.regIsPaper = regIsPaper;
    }

    @Override
    public String toString() {
        return "Registration{" +
                "regId=" + regId +
                ", chId=" + chId +
                ", docId=" + docId +
                ", levelId=" + levelId +
                ", deptId=" + deptId +
                ", daTime='" + daTime + '\'' +
                ", regDate=" + regDate +
                ", regStatus='" + regStatus + '\'' +
                ", regIsPaper=" + regIsPaper +
                '}';
    }
}
