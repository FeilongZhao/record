package com.bw.record.pojo;

import java.io.Serializable;
import java.util.Date;
/**
 * 
 * @author Alvin
 *  对应tbl_test数据库，保存用户的输入数据
 */



public class Text implements Serializable{

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
    private Integer id;
    
    private int cardNumber;
    
    private String projectName;
    
    private String contest;
    
    private String company;
    
    private String persion;
    
    private String hours;
    
    private Date date;
    
    private String test1;
    
    private String test2;
    
    private String test3;
    
    

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(int cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPersion() {
        return persion;
    }

    public void setPersion(String persion) {
        this.persion = persion;
    }

    public String getHours() {
        return hours;
    }

    public void setHours(String hours) {
        this.hours = hours;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTest1() {
        return test1;
    }

    public void setTest1(String test1) {
        this.test1 = test1;
    }

    public String getTest2() {
        return test2;
    }

    public void setTest2(String test2) {
        this.test2 = test2;
    }

    public String getTest3() {
        return test3;
    }

    public void setTest3(String test3) {
        this.test3 = test3;
    }

    public String getContest() {
        return contest;
    }

    public void setContest(String contest) {
        this.contest = contest;
    }

    @Override
    public String toString() {
        return "Text [cardNumber=" + cardNumber + ", projectName=" + projectName + ", contest=" + contest + ", company="
                + company + ", persion=" + persion + ", hours=" + hours + ", date=" + date + ", test1=" + test1
                + ", test2=" + test2 + ", test3=" + test3 + "]";
    }
    
}
