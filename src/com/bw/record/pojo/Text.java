package com.bw.record.pojo;

import java.io.Serializable;
/**
 * 
 * @author Alvin
 *  对应tbl_test数据库，保存用户的输入数据
 */
import java.sql.Date;
public class Text implements Serializable{

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
    private int cardNumber;
    
    private String projectName;
    
    private String company;
    
    private String persion;
    
    private int hours;
    
    private Date date;
    
    private String test1;
    
    private String test2;
    
    private String test3;

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

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
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
    
}
