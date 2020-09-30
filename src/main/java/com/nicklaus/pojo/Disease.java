package com.nicklaus.pojo;

public class Disease {
    private int disId;
    private String disName;
    private int deptId;

    public int getDisId() {
        return disId;
    }

    public void setDisId(int disId) {
        this.disId = disId;
    }

    public String getDisName() {
        return disName;
    }

    public void setDisName(String disName) {
        this.disName = disName;
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    @Override
    public String toString() {
        return "Disease{" +
                "disId=" + disId +
                ", disName='" + disName + '\'' +
                ", deptId=" + deptId +
                '}';
    }
}
