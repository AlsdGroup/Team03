package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年03月06日 20:46
 */
public class PmsMac implements Serializable{
    private String macId;
    private String macNo;
    private String macName;
    private String macManageStaffNo;
    private String macManageStaffName;
    private String effectFlag;
    private String createStaffNo;
    private String createStaffName;
    private String createDate;

    public PmsMac() {
    }

    public PmsMac(String macId, String macNo, String macName, String macManageStaffNo, String macManageStaffName, String effectFlag, String createStaffNo, String createStaffName, String createDate) {
        this.macId = macId;
        this.macNo = macNo;
        this.macName = macName;
        this.macManageStaffNo = macManageStaffNo;
        this.macManageStaffName = macManageStaffName;
        this.effectFlag = effectFlag;
        this.createStaffNo = createStaffNo;
        this.createStaffName = createStaffName;
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "PmsMac{" +
                "macId='" + macId + '\'' +
                ", macNo='" + macNo + '\'' +
                ", macName='" + macName + '\'' +
                ", macManageStaffNo='" + macManageStaffNo + '\'' +
                ", macManageStaffName='" + macManageStaffName + '\'' +
                ", effectFlag='" + effectFlag + '\'' +
                ", createStaffNo='" + createStaffNo + '\'' +
                ", createStaffName='" + createStaffName + '\'' +
                ", createDate='" + createDate + '\'' +
                '}';
    }

    public String getMacId() {
        return macId;
    }

    public void setMacId(String macId) {
        this.macId = macId;
    }

    public String getMacNo() {
        return macNo;
    }

    public void setMacNo(String macNo) {
        this.macNo = macNo;
    }

    public String getMacName() {
        return macName;
    }

    public void setMacName(String macName) {
        this.macName = macName;
    }

    public String getMacManageStaffNo() {
        return macManageStaffNo;
    }

    public void setMacManageStaffNo(String macManageStaffNo) {
        this.macManageStaffNo = macManageStaffNo;
    }

    public String getMacManageStaffName() {
        return macManageStaffName;
    }

    public void setMacManageStaffName(String macManageStaffName) {
        this.macManageStaffName = macManageStaffName;
    }

    public String getEffectFlag() {
        return effectFlag;
    }

    public void setEffectFlag(String effectFlag) {
        this.effectFlag = effectFlag;
    }

    public String getCreateStaffNo() {
        return createStaffNo;
    }

    public void setCreateStaffNo(String createStaffNo) {
        this.createStaffNo = createStaffNo;
    }

    public String getCreateStaffName() {
        return createStaffName;
    }

    public void setCreateStaffName(String createStaffName) {
        this.createStaffName = createStaffName;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
}
