package com.bw.record.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.record.mapper.AdminDao;
import com.bw.record.pojo.Admin;

@Service
public class AdminServiceImpl implements AdminService{

    @Autowired
    private AdminDao adminDao; 
    
    public Admin selectAdminByCardNumber(Integer cardNumber) {
        
        return adminDao.selectAdminByCardNumber(cardNumber);
    }

    public void updatePassword(Admin admin) {
        adminDao.updatePassword(admin);
        
    }

}
