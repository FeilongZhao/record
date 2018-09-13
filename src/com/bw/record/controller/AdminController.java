package com.bw.record.controller;

import java.util.Collection;

import javax.security.auth.login.LoginException;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bw.record.exception.PasswordWrongException;
import com.bw.record.exception.UpdatePasswordException;
import com.bw.record.pojo.Admin;
import com.bw.record.service.AdminService;
import com.ndktools.javamd5.core.MD5;
/**
 * 登录controller
 * @author Alvin
 *MD5加密是32位大写
 */
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/admin/login")
    public String login(Admin admin, Model model, HttpSession session) throws PasswordWrongException {

       String password = admin.getPassword();
       admin.setPassword(new MD5().getMD5ofStr(password));
        Admin a = adminService.selectAdminByCardNumber(admin.getCardNumber());
        if (a != null) {
            if (admin.getPassword().equals(a.getPassword())) {

                // System.out.println("yes");
                session.setAttribute("admin", a);
               // System.out.println(a.getName());
               // System.out.println(a.getCardNumber());
                // model.addAttribute("admin",admin);
                return "redirect:/select/list";
            } else {
                throw new PasswordWrongException("密码错误");
            }
        } else {
            throw new PasswordWrongException("帐号不存在");
        }
    }
    
    
    @RequestMapping(value = "/admin/updatePassword")
    public String update(HttpSession session,String password,String newPassword) throws UpdatePasswordException {
        
        Admin admin = (Admin) session.getAttribute("admin");
        
        if (admin.getPassword().equals(password) || admin.getPassword() == password) {
            
            admin.setPassword(newPassword);
            adminService.updatePassword(admin);
            return "myinfo";
        }else {
            throw new UpdatePasswordException("原密码错误，请重新输入");
        }
        
        
       
    }

}
