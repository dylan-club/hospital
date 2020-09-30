package com.nicklaus.pojo;

public class Patient {
    private int chId;
    private int regId;
    private int deptId;
    private int docId;
    private String chName;
    private int chAge;
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

    public int getChAge() {
        return chAge;
    }

    public void setChAge(int chAge) {
        this.chAge = chAge;
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public String getRegStatus() {
        return regStatus;
    }

    public void setRegStatus(String regStatus) {
        this.regStatus = regStatus;
    }

    public int getDocId() {
        return docId;
    }

    public void setDocId(int docId) {
        this.docId = docId;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "chId=" + chId +
                ", regId=" + regId +
                ", deptId=" + deptId +
                ", docId=" + docId +
                ", chName='" + chName + '\'' +
                ", chAge=" + chAge +
                ", regStatus='" + regStatus + '\'' +
                '}';
    }
}
