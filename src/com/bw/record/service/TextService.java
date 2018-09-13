package com.bw.record.service;

import java.util.List;

import com.bw.record.pojo.Company;
import com.bw.record.pojo.QueryVo;
import com.bw.record.pojo.Text;
import com.bw.record.utils.Page;

import junit.framework.Test;

public interface TextService {

    public void addTest(Text text);
    //查询公司
    public List<Company> selectByCode(String code); 
    //三个条件查询
    public Page<Text> selectPageByQueryVo(QueryVo queryVo);
    
    public void deleteById(Integer id);
    
    public Text selectTextById(Integer id);
    
    public void updateById(Text text);
}
