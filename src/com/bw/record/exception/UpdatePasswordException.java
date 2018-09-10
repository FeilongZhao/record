package com.bw.record.exception;

public class UpdatePasswordException extends Exception{
   
    
    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public UpdatePasswordException(String text) {
        super();
        this.text = text;
    }
    
    

}
