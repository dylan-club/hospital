package com.nicklaus.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class PaymentList {
    private int plId;
    private int chId;
    private String chName;
    private String plName;
    private int plAmount;
    private double plPrice;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date plDate;
    private String plPayStatus;

    public int getPlId() {
        return plId;
    }

    public void setPlId(int plId) {
        this.plId = plId;
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

    public String getPlName() {
        return plName;
    }

    public void setPlName(String plName) {
        this.plName = plName;
    }

    public int getPlAmount() {
        return plAmount;
    }

    public void setPlAmount(int plAmount) {
        this.plAmount = plAmount;
    }

    public double getPlPrice() {
        return plPrice;
    }

    public void setPlPrice(double plPrice) {
        this.plPrice = plPrice;
    }

    public Date getPlDate() {
        return plDate;
    }

    public void setPlDate(Date plDate) {
        this.plDate = plDate;
    }

    public String getPlPayStatus() {
        return plPayStatus;
    }

    public void setPlPayStatus(String plPayStatus) {
        this.plPayStatus = plPayStatus;
    }

    @Override
    public String toString() {
        return "PaymentList{" +
                "plId=" + plId +
                ", chId=" + chId +
                ", chName='" + chName + '\'' +
                ", plName='" + plName + '\'' +
                ", plAmount=" + plAmount +
                ", plPrice=" + plPrice +
                ", plDate=" + plDate +
                ", plPayStatus='" + plPayStatus + '\'' +
                '}';
    }
}
