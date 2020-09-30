package com.nicklaus.vo;

import com.nicklaus.pojo.Payment;
import com.nicklaus.pojo.PaymentList;

import java.util.List;

public class PaymentPageBean {

    private int payId;
    private int chId;
    private String chName;
    private double payTotal;
    private double payReal;
    private double payBack;

    private List<PaymentList> paymentLists;

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

    public List<PaymentList> getPaymentLists() {
        return paymentLists;
    }

    public void setPaymentLists(List<PaymentList> paymentLists) {
        this.paymentLists = paymentLists;
    }

    @Override
    public String toString() {
        return "PaymentPageBean{" +
                "payId=" + payId +
                ", chId=" + chId +
                ", chName='" + chName + '\'' +
                ", payTotal=" + payTotal +
                ", payReal=" + payReal +
                ", payBack=" + payBack +
                ", paymentLists=" + paymentLists +
                '}';
    }
}
