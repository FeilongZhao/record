package com.bw.record.pojo;

import java.io.Serializable;

import org.aspectj.weaver.AjAttribute.PrivilegedAttribute;

/**
 * 
 * @author Alvin
 * 对应tbl_login数据库
 *
 */
public class Admin implements Serializable{

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    private int cardNumber;
    
    private String name;
    
    private String password;

    public int getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(int cardNumber) {
        this.cardNumber = cardNumber;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

  
    
}
