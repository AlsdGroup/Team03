package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月05日 20:16
 */
public class YjDepartment implements Serializable{
    private int depId;
    private String depName;
    private int chiefId;

    public YjDepartment() {
    }

    public YjDepartment(int depId, String depName, int chiefId) {
        this.depId = depId;
        this.depName = depName;
        this.chiefId = chiefId;
    }

    @Override
    public String toString() {
        return "YjDepartment{" +
                "depId=" + depId +
                ", depName='" + depName + '\'' +
                ", chiefId=" + chiefId +
                '}';
    }

    public int getDepId() {
        return depId;
    }

    public void setDepId(int depId) {
        this.depId = depId;
    }

    public String getDepName() {
        return depName;
    }

    public void setDepName(String depName) {
        this.depName = depName;
    }

    public int getChiefId() {
        return chiefId;
    }

    public void setChiefId(int chiefId) {
        this.chiefId = chiefId;
    }
}
