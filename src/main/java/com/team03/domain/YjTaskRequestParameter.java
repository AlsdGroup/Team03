package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月06日 19:54
 */
public class YjTaskRequestParameter implements Serializable {
    private int pageIndex;
    private int pageSize;
    private String taskDate;
    private String taskName;
    private int taskStaff;
    private int taskDep;
    private int taskState;
    private int taskPrint;
    private int taskFinish;

    public YjTaskRequestParameter() {
    }

    public YjTaskRequestParameter(int pageIndex, int pageSize, String taskDate, String taskName, int taskStaff, int taskDep, int taskState, int taskPrint, int taskFinish) {
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
        this.taskDate = taskDate;
        this.taskName = taskName;
        this.taskStaff = taskStaff;
        this.taskDep = taskDep;
        this.taskState = taskState;
        this.taskPrint = taskPrint;
        this.taskFinish = taskFinish;
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
                ", taskState=" + taskState +
                '}';
    }

    public int getTaskPrint() {
        return taskPrint;
    }

    public void setTaskPrint(int taskPrint) {
        this.taskPrint = taskPrint;
    }

    public int getTaskFinish() {
        return taskFinish;
    }

    public void setTaskFinish(int taskFinish) {
        this.taskFinish = taskFinish;
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

    public int getTaskState() {
        return taskState;
    }

    public void setTaskState(int taskState) {
        this.taskState = taskState;
    }
}
