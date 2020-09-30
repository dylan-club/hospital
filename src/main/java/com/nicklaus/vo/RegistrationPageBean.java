package com.nicklaus.vo;

import com.nicklaus.pojo.Department;
import com.nicklaus.pojo.RegLevel;

import java.util.List;

public class RegistrationPageBean {
    private int cid;
    private int payId;
    private List<Department> deptNames;
    private List<RegLevel> regLevelNames;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getPayId() {
        return payId;
    }

    public void setPayId(int payId) {
        this.payId = payId;
    }

    public List<Department> getDeptNames() {
        return deptNames;
    }

    public void setDeptNames(List<Department> deptNames) {
        this.deptNames = deptNames;
    }

    public List<RegLevel> getRegLevelNames() {
        return regLevelNames;
    }

    public void setRegLevelNames(List<RegLevel> regLevelNames) {
        this.regLevelNames = regLevelNames;
    }
}
