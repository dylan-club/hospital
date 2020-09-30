package com.nicklaus.pojo;

import java.util.Date;

public class Recipe {
    private int recId;
    private int temId;
    private int chId;
    private int regId;
    private int docId;
    private String temName;
    private Date recDate;
    private String recPayStatus;

    public int getRecId() {
        return recId;
    }

    public void setRecId(int recId) {
        this.recId = recId;
    }

    public int getTemId() {
        return temId;
    }

    public void setTemId(int temId) {
        this.temId = temId;
    }

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

    public int getDocId() {
        return docId;
    }

    public void setDocId(int docId) {
        this.docId = docId;
    }

    public String getTemName() {
        return temName;
    }

    public void setTemName(String temName) {
        this.temName = temName;
    }

    public Date getRecDate() {
        return recDate;
    }

    public void setRecDate(Date recDate) {
        this.recDate = recDate;
    }

    public String getRecPayStatus() {
        return recPayStatus;
    }

    public void setRecPayStatus(String recPayStatus) {
        this.recPayStatus = recPayStatus;
    }

    @Override
    public String toString() {
        return "Recipe{" +
                "recId=" + recId +
                ", temId=" + temId +
                ", chId=" + chId +
                ", regId=" + regId +
                ", docId=" + docId +
                ", temName='" + temName + '\'' +
                ", recDate=" + recDate +
                ", recPayStatus='" + recPayStatus + '\'' +
                '}';
    }
}
