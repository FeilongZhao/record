package com.bw.record.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginOutController {
    
    
    @RequestMapping(value="/admin/out")
    public String loginOut(HttpServletRequest request,HttpServletResponse response,HttpSession session) {
        
        session.invalidate();
        return "index";
    }

}
