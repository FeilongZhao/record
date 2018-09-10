package com.bw.record.controller;

import java.util.Collection;

import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bw.record.exception.PasswordWrongException;
import com.bw.record.pojo.Admin;
import com.bw.record.service.AdminService;
/**
 * 登录controller
 * @author Alvin
 *
 */
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/admin/login")
    public String login(Admin admin, Model model, HttpSession session) throws PasswordWrongException {

        Admin a = adminService.selectAdminByCardNumber(admin.getCardNumber());
        if (a != null) {
            if (admin.getPassword().equals(a.getPassword())) {

                // System.out.println("yes");
                session.setAttribute("admin", admin);
                // model.addAttribute("admin",admin);
                return "list";
            } else {
                throw new PasswordWrongException("密码错误");
            }
        } else {
            throw new PasswordWrongException("帐号不存在");
        }
    }

}
