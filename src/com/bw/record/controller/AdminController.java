package com.bw.record.controller;

import java.util.Collection;

import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bw.record.pojo.Admin;
import com.bw.record.service.AdminService;

@Controller
public class AdminController {
    
    @Autowired
    private AdminService adminService;
    
    @RequestMapping(value = "/admin/login")
    public String login(Admin admin,Model model) {
        
        Admin a = adminService.selectAdminByCardNumber(admin.getCardNumber());
        if (a != null) {
            if (admin.getPassword().equals(a.getPassword())) {
                
                System.out.println("yes");
                return "list";
            }else {
                return "帐号或者密码错误";
            }
        }else {
            return "帐号不存在";
        }
    }

}
