package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月05日 19:04
 */
public class StaffParameter implements Serializable{

    private int staffId;
    private String staffName;
    private int staffDepId;
    private String staffDepName;

    public StaffParameter() {
    }

    public StaffParameter(int staffId, String staffName, int staffDepId, String staffDepName) {
        this.staffId = staffId;
        this.staffName = staffName;
        this.staffDepId = staffDepId;
        this.staffDepName = staffDepName;
    }

    @Override
    public String toString() {
        return "StaffParameter{" +
                "staffId=" + staffId +
                ", staffName='" + staffName + '\'' +
                ", staffDepId=" + staffDepId +
                ", staffDepName='" + staffDepName + '\'' +
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

    public int getStaffDepId() {
        return staffDepId;
    }

    public void setStaffDepId(int staffDepId) {
        this.staffDepId = staffDepId;
    }

    public String getStaffDepName() {
        return staffDepName;
    }

    public void setStaffDepName(String staffDepName) {
        this.staffDepName = staffDepName;
    }
}
