package com.team03.domain;

import java.io.Serializable;

/**
 * AlsdGo 2018年02月06日 11:07
 */
public class YjTask implements Serializable{
    private int id;
    private String taskId;
    private String taskName;
    private int taskDep;
    private String taskStep;
    private int taskStaff;
    private String taskDate;
    private int taskState;
    private int taskPrint;
    private int taskFinish;
    private int staffBefore;
    private int staffNow;

    public YjTask() {
    }

    public YjTask(int id, String taskId, String taskName, int taskDep, String taskStep, int taskStaff, String taskDate, int taskState, int taskPrint, int taskFinish, int staffBefore, int staffNow) {
        this.id = id;
        this.taskId = taskId;
        this.taskName = taskName;
        this.taskDep = taskDep;
        this.taskStep = taskStep;
        this.taskStaff = taskStaff;
        this.taskDate = taskDate;
        this.taskState = taskState;
        this.taskPrint = taskPrint;
        this.taskFinish = taskFinish;
        this.staffBefore = staffBefore;
        this.staffNow = staffNow;
    }

    @Override
    public String toString() {
        return "YjTask{" +
                "id=" + id +
                ", taskId='" + taskId + '\'' +
                ", taskName='" + taskName + '\'' +
                ", taskDep=" + taskDep +
                ", taskStep='" + taskStep + '\'' +
                ", taskStaff=" + taskStaff +
                ", taskDate='" + taskDate + '\'' +
                ", taskState=" + taskState +
                ", taskPrint=" + taskPrint +
                ", taskFinish=" + taskFinish +
                ", staffBefore=" + staffBefore +
                ", staffNow=" + staffNow +
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
