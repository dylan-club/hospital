package com.nicklaus.pojo;

public class RegPrice {
    private int chId;
    private String chName;
    private double levelPrice;

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

    public double getLevelPrice() {
        return levelPrice;
    }

    public void setLevelPrice(double levelPrice) {
        this.levelPrice = levelPrice;
    }

    @Override
    public String toString() {
        return "RegPrice{" +
                "chId=" + chId +
                ", chName='" + chName + '\'' +
                ", levelPrice=" + levelPrice +
                '}';
    }
}
