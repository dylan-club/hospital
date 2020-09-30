package com.nicklaus.pojo;

public class TemplateList {
    private int tlId;
    private int temId;
    private int mdId;
    private String mdName;
    private int tlAmount;
    private double tlPrice;
    private String tlType;

    public int getTlId() {
        return tlId;
    }

    public void setTlId(int tlId) {
        this.tlId = tlId;
    }

    public int getTemId() {
        return temId;
    }

    public void setTemId(int temId) {
        this.temId = temId;
    }

    public int getMdId() {
        return mdId;
    }

    public void setMdId(int mdId) {
        this.mdId = mdId;
    }

    public String getMdName() {
        return mdName;
    }

    public void setMdName(String mdName) {
        this.mdName = mdName;
    }

    public int getTlAmount() {
        return tlAmount;
    }

    public void setTlAmount(int tlAmount) {
        this.tlAmount = tlAmount;
    }

    public double getTlPrice() {
        return tlPrice;
    }

    public void setTlPrice(double tlPrice) {
        this.tlPrice = tlPrice;
    }

    public String getTlType() {
        return tlType;
    }

    public void setTlType(String tlType) {
        this.tlType = tlType;
    }

    @Override
    public String toString() {
        return "TemplateList{" +
                "tlId=" + tlId +
                ", temId=" + temId +
                ", mdId=" + mdId +
                ", mdName='" + mdName + '\'' +
                ", tlAmount=" + tlAmount +
                ", tlPrice=" + tlPrice +
                ", tlType='" + tlType + '\'' +
                '}';
    }
}
