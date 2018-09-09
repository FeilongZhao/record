package com.bw.record.exception;

public class PasswordWrongException extends Exception{
    
    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public PasswordWrongException(String text) {
        super();
        this.text = text;
    }
    

}
