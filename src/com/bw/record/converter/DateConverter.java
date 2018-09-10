package com.bw.record.converter;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter {
    
    public Date convert(String arg0) {
        // TODO Auto-generated method stub
        try {
            if (arg0 != null) {
                DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
                return df.parse(arg0);
            }

        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

}
