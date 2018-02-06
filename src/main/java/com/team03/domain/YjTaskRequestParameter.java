package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月06日 19:54
 */
public class YjTaskRequestParameter implements Serializable{
    private int pageIndex;
    private int pageSize;
    private String taskDate;
    private String taskName;
    private int taskStaff;
    private int taskDep;

    public YjTaskRequestParameter() {
    }

    public YjTaskRequestParameter(int pageIndex, int pageSize, String taskDate, String taskName, int taskStaff, int taskDep) {
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
        this.taskDate = taskDate;
        this.taskName = taskName;
        this.taskStaff = taskStaff;
        this.taskDep = taskDep;
    }

    @Override
    public String toString() {
        return "YjTaskRequestParameter{" +
                "pageIndex=" + pageIndex +
                ", pageSize=" + pageSize +
                ", taskDate='" + taskDate + '\'' +
                ", taskName='" + taskName + '\'' +
                ", taskStaff=" + taskStaff +
                ", taskDep=" + taskDep +
                '}';
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

    public String getTaskDate() {
        return taskDate;
    }

    public void setTaskDate(String taskDate) {
        this.taskDate = taskDate;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public int getTaskStaff() {
        return taskStaff;
    }

    public void setTaskStaff(int taskStaff) {
        this.taskStaff = taskStaff;
    }

    public int getTaskDep() {
        return taskDep;
    }

    public void setTaskDep(int taskDep) {
        this.taskDep = taskDep;
    }
}
