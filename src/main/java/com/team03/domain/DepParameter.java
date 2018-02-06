package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月05日 20:18
 */
public class DepParameter implements Serializable{
    private int depId;
    private String depName;
    private int chiefId;
    private String chiefName;

    public DepParameter() {
    }

    public DepParameter(int depId, String depName, int chiefId, String chiefName) {
        this.depId = depId;
        this.depName = depName;
        this.chiefId = chiefId;
        this.chiefName = chiefName;
    }

    @Override
    public String toString() {
        return "DepParameter{" +
                "depId=" + depId +
                ", depName='" + depName + '\'' +
                ", chiefId=" + chiefId +
                ", chiefName='" + chiefName + '\'' +
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

    public String getChiefName() {
        return chiefName;
    }

    public void setChiefName(String chiefName) {
        this.chiefName = chiefName;
    }
}
