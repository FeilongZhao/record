package com.bw.record.service;

import com.bw.record.pojo.Admin;

public interface AdminService {
    
    public Admin selectAdminByCardNumber(Integer cardNumber);
    
    public void updatePassword(Admin admin);

}
