package com.yid.demoroom.model;

public class Analysis {
    private Long analysisId;
    private Integer agvId;
    private Integer year;
    private Integer month;
    private Integer day;
    private Integer week;
    private Integer workingHours;
    private Integer openHours;
    private Integer task;

    public Long getAnalysisId() {
        return analysisId;
    }

    public void setAnalysisId(Long analysisId) {
        this.analysisId = analysisId;
    }

    public Integer getAgvId() {
        return agvId;
    }

    public void setAgvId(Integer agvId) {
        this.agvId = agvId;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getMonth() {
        return month;
    }

    public void setMonth(Integer month) {
        this.month = month;
    }

    public Integer getDay() {
        return day;
    }

    public void setDay(Integer day) {
        this.day = day;
    }

    public Integer getWeek() {
        return week;
    }

    public void setWeek(Integer week) {
        this.week = week;
    }

    public Integer getWorkingHours() {
        return workingHours;
    }

    public void setWorkingHours(Integer workingHours) {
        this.workingHours = workingHours;
    }

    public Integer getOpenHours() {
        return openHours;
    }

    public void setOpenHours(Integer openHours) {
        this.openHours = openHours;
    }

    public Integer getTask() {
        return task;
    }

    public void setTask(Integer task) {
        this.task = task;
    }
}
