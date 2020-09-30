package com.nicklaus.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class CaseHistory {
    private int id;
    private int chId;
    private String chName;
    private String chGender;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date chBirthday;

    private int chAge;
    private long idCard;
    private String chAddress;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getChId() {
        return chId;
    }

    public void setChId(int chId) {
        this.chId = chId;
    }

    public String getChName() {
        return chName;
    }

    public void setChName(String chName) {
        this.chName = chName;
    }

    public Date getChBirthday() {
        return chBirthday;
    }

    public void setChBirthday(Date chBirthday) {
        this.chBirthday = chBirthday;
    }

    public int getChAge() {
        return chAge;
    }

    public void setChAge(int chAge) {
        this.chAge = chAge;
    }

    public long getIdCard() {
        return idCard;
    }

    public void setIdCard(long idCard) {
        this.idCard = idCard;
    }

    public String getChAddress() {
        return chAddress;
    }

    public void setChAddress(String chAddress) {
        this.chAddress = chAddress;
    }

    public String getChGender() {
        return chGender;
    }

    public void setChGender(String chGender) {
        this.chGender = chGender;
    }

    @Override
    public String toString() {
        return "CaseHistory{" +
                "id=" + id +
                ", chId=" + chId +
                ", chName='" + chName + '\'' +
                ", chGender='" + chGender + '\'' +
                ", chBirthday=" + chBirthday +
                ", chAge=" + chAge +
                ", idCard=" + idCard +
                ", chAddress='" + chAddress + '\'' +
                '}';
    }
}
