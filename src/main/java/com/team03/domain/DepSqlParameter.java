package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月05日 20:18
 */
public class DepSqlParameter implements Serializable{
    private String depName;
    private int pageIndex;
    private int pageSize;

    public DepSqlParameter() {
    }

    public DepSqlParameter(String depName, int pageIndex, int pageSize) {
        this.depName = depName;
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
    }

    @Override
    public String toString() {
        return "DepSqlParameter{" +
                "depName='" + depName + '\'' +
                ", pageIndex=" + pageIndex +
                ", pageSize=" + pageSize +
                '}';
    }

    public String getDepName() {
        return depName;
    }

    public void setDepName(String depName) {
        this.depName = depName;
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
