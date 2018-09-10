package com.bw.record.mapper;

import java.util.List;

import com.bw.record.pojo.Admin;

public interface AdminDao {
    
    public Admin selectAdminByCardNumber(Integer cardNumber);
    
    public void updatePassword(Admin admin);

}
