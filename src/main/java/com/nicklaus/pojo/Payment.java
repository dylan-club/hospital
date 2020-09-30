package com.nicklaus.pojo;

import java.util.Date;

public class Payment {
    private int id;
    private int payId;
    private int chId;
    private String chName;
    private double payTotal;
    private double payReal;
    private double payBack;
    private String payType;
    private Date payDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPayId() {
        return payId;
    }

    public void setPayId(int payId) {
        this.payId = payId;
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

    public double getPayTotal() {
        return payTotal;
    }

    public void setPayTotal(double payTotal) {
        this.payTotal = payTotal;
    }

    public double getPayReal() {
        return payReal;
    }

    public void setPayReal(double payReal) {
        this.payReal = payReal;
    }

    public double getPayBack() {
        return payBack;
    }

    public void setPayBack(double payBack) {
        this.payBack = payBack;
    }

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "id=" + id +
                ", payId=" + payId +
                ", chId=" + chId +
                ", chName='" + chName + '\'' +
                ", payTotal=" + payTotal +
                ", payReal=" + payReal +
                ", payBack=" + payBack +
                ", payType='" + payType + '\'' +
                ", payDate=" + payDate +
                '}';
    }
}
