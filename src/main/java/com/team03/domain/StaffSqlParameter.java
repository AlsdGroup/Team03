package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月05日 19:15
 */
public class StaffSqlParameter implements Serializable{
    private String staffName;
    private int pageIndex;
    private int pageSize;

    public StaffSqlParameter() {
    }

    public StaffSqlParameter(String staffName, int pageIndex, int pageSize) {
        this.staffName = staffName;
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
    }

    @Override
    public String toString() {
        return "StaffSqlParameter{" +
                "staffName='" + staffName + '\'' +
                ", pageIndex=" + pageIndex +
                ", pageSize=" + pageSize +
                '}';
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
