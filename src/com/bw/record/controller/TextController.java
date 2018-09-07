package com.bw.record.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bw.record.pojo.Admin;
import com.bw.record.pojo.Text;
import com.bw.record.service.AdminService;
import com.bw.record.service.TextService;

import junit.framework.Test;

@Controller
public class TextController {
    
    @Autowired
    private TextService textService;
    
    @RequestMapping(value = "/text/add")
    public String addText(Text text,HttpSession session) {
             
       Admin admin = (Admin) session.getAttribute("admin");
        text.setCardNumber(admin.getCardNumber());
        text.setDate(new Date(System.currentTimeMillis()));
        textService.addTest(text);
        
        return "ok";
    }

}
