package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月06日 11:10
 */
public class YjTaskParameter implements Serializable{
    private int id;
    private String taskId;
    private String taskName;
    private int taskDep;
    private String taskDepName;
    private String taskStep;
    private int taskStaff;
    private String taskStaffName;
    private String taskDate;
    private int taskState;
    private int staffBefore;
    private int staffNow;

    public YjTaskParameter() {
    }

    @Override
    public String toString() {
        return "YjTaskParameter{" +
                "id=" + id +
                ", taskId='" + taskId + '\'' +
                ", taskName='" + taskName + '\'' +
                ", taskDep=" + taskDep +
                ", taskDepName='" + taskDepName + '\'' +
                ", taskStep='" + taskStep + '\'' +
                ", taskStaff=" + taskStaff +
                ", taskStaffName='" + taskStaffName + '\'' +
                ", taskDate='" + taskDate + '\'' +
                ", taskState=" + taskState +
                ", staffBefore=" + staffBefore +
                ", staffNow=" + staffNow +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTaskId() {
        return taskId;
    }

    public void setTaskId(String taskId) {
        this.taskId = taskId;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public int getTaskDep() {
        return taskDep;
    }

    public void setTaskDep(int taskDep) {
        this.taskDep = taskDep;
    }

    public String getTaskDepName() {
        return taskDepName;
    }

    public void setTaskDepName(String taskDepName) {
        this.taskDepName = taskDepName;
    }

    public String getTaskStep() {
        return taskStep;
    }

    public void setTaskStep(String taskStep) {
        this.taskStep = taskStep;
    }

    public int getTaskStaff() {
        return taskStaff;
    }

    public void setTaskStaff(int taskStaff) {
        this.taskStaff = taskStaff;
    }

    public String getTaskStaffName() {
        return taskStaffName;
    }

    public void setTaskStaffName(String taskStaffName) {
        this.taskStaffName = taskStaffName;
    }

    public String getTaskDate() {
        return taskDate;
    }

    public void setTaskDate(String taskDate) {
        this.taskDate = taskDate;
    }

    public int getTaskState() {
        return taskState;
    }

    public void setTaskState(int taskState) {
        this.taskState = taskState;
    }

    public int getStaffBefore() {
        return staffBefore;
    }

    public void setStaffBefore(int staffBefore) {
        this.staffBefore = staffBefore;
    }

    public int getStaffNow() {
        return staffNow;
    }

    public void setStaffNow(int staffNow) {
        this.staffNow = staffNow;
    }
}
