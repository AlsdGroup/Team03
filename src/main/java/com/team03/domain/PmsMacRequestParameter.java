package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年03月06日 20:56
 */
public class PmsMacRequestParameter implements Serializable{
    private int pageIndex;
    private int pageSize;
    private String macId;
    private String macName;
    private String macManageStaffNo;
    private String macManageStaffName;
    private String createDate;

    public PmsMacRequestParameter() {
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getMacManageStaffName() {
        return macManageStaffName;
    }

    public void setMacManageStaffName(String macManageStaffName) {
        this.macManageStaffName = macManageStaffName;
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

    public String getMacId() {
        return macId;
    }

    public void setMacId(String macId) {
        this.macId = macId;
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
}
