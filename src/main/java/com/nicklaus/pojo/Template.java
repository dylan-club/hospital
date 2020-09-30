package com.nicklaus.pojo;

public class Template {
    private int temId;
    private String temName;
    private int deptId;
    private String deptName;

    public int getTemId() {
        return temId;
    }

    public void setTemId(int temId) {
        this.temId = temId;
    }

    public String getTemName() {
        return temName;
    }

    public void setTempName(String temName) {
        this.temName = temName;
    }

    public int getDeptId() {
        return deptId;
    }

    public void setDeptId(int deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    @Override
    public String toString() {
        return "template{" +
                "temId=" + temId +
                ", temName='" + temName + '\'' +
                ", deptId=" + deptId +
                ", deptName='" + deptName + '\'' +
                '}';
    }
}
