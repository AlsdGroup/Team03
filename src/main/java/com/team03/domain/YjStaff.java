package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月05日 10:36
 */
public class YjStaff implements Serializable{

    private int staffId;
    private String staffName;
    private String staffEmail;
    private String staffUserName;
    private String staffPwd;
    private int staffDepId;

    public YjStaff() {
    }

    public YjStaff(int staffId, String staffName, String staffEmail, String staffUserName, String staffPwd, int staffDepId) {
        this.staffId = staffId;
        this.staffName = staffName;
        this.staffEmail = staffEmail;
        this.staffUserName = staffUserName;
        this.staffPwd = staffPwd;
        this.staffDepId = staffDepId;
    }

    @Override
    public String toString() {
        return "YjStaff{" +
                "staffId=" + staffId +
                ", staffName='" + staffName + '\'' +
                ", staffEmail='" + staffEmail + '\'' +
                ", staffUserName='" + staffUserName + '\'' +
                ", staffPwd='" + staffPwd + '\'' +
                ", staffDepId=" + staffDepId +
                '}';
    }

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }

    public String getStaffUserName() {
        return staffUserName;
    }

    public void setStaffUserName(String staffUserName) {
        this.staffUserName = staffUserName;
    }

    public String getStaffPwd() {
        return staffPwd;
    }

    public void setStaffPwd(String staffPwd) {
        this.staffPwd = staffPwd;
    }

    public int getStaffDepId() {
        return staffDepId;
    }

    public void setStaffDepId(int staffDepId) {
        this.staffDepId = staffDepId;
    }
}
