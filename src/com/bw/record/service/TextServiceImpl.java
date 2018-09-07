package com.bw.record.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.record.mapper.TextDao;
import com.bw.record.pojo.Text;


@Service
public class TextServiceImpl implements TextService {

    @Autowired
    private TextDao textDao;
    
    public void addTest(Text text) {
        
        textDao.addContest(text);
    }

}
