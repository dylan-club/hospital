package com.nicklaus.pojo;

public class Diagnosis {
    private int id;
    private int chId;
    private int docId;
    private int regId;
    private int disId;
    private String diagDescription;
    private String diagHistory;
    private String diagExistence;
    private String diagAllergy;
    private String diagResult;

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

    public int getDocId() {
        return docId;
    }

    public void setDocId(int docId) {
        this.docId = docId;
    }

    public int getRegId() {
        return regId;
    }

    public void setRegId(int regId) {
        this.regId = regId;
    }

    public int getDisId() {
        return disId;
    }

    public void setDisId(int disId) {
        this.disId = disId;
    }

    public String getDiagDescription() {
        return diagDescription;
    }

    public void setDiagDescription(String diagDescription) {
        this.diagDescription = diagDescription;
    }

    public String getDiagHistory() {
        return diagHistory;
    }

    public void setDiagHistory(String diagHistory) {
        this.diagHistory = diagHistory;
    }

    public String getDiagExistence() {
        return diagExistence;
    }

    public void setDiagExistence(String diagExistence) {
        this.diagExistence = diagExistence;
    }

    public String getDiagAllergy() {
        return diagAllergy;
    }

    public void setDiagAllergy(String diagAllergy) {
        this.diagAllergy = diagAllergy;
    }

    public String getDiagResult() {
        return diagResult;
    }

    public void setDiagResult(String diagResult) {
        this.diagResult = diagResult;
    }

    @Override
    public String toString() {
        return "Diagnosis{" +
                "id=" + id +
                ", chId=" + chId +
                ", docId=" + docId +
                ", regId=" + regId +
                ", disId=" + disId +
                ", diagDescription='" + diagDescription + '\'' +
                ", diagHistory='" + diagHistory + '\'' +
                ", diagExistence='" + diagExistence + '\'' +
                ", diagAllergy='" + diagAllergy + '\'' +
                ", diagResult='" + diagResult + '\'' +
                '}';
    }
}
