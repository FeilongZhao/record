package com.bw.record.mapper;

import java.util.List;

import com.bw.record.pojo.Company;
import com.bw.record.pojo.QueryVo;
import com.bw.record.pojo.Text;

import junit.framework.Test;

public interface TextDao {
    
    public void addContest(Text text); 
    
   
    
    //查询公司
   public List<Company> selectByCode(String code); 
   
   //总条数
   public Integer textCount(QueryVo queryVo);
   
   //结果集
   public List<Text> selectTextList(QueryVo queryVo);
   
   //删除text  
   public void deleteById(Integer id);

   //更新text
   public void updateById(Text text);
   //查询
   public Text selectTextById(Integer id);
}
