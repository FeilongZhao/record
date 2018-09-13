package com.bw.record.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bw.record.mapper.TextDao;
import com.bw.record.pojo.Company;
import com.bw.record.pojo.QueryVo;
import com.bw.record.pojo.Text;
import com.bw.record.utils.Page;

@Service
@Transactional
public class TextServiceImpl implements TextService {

    @Autowired
    private TextDao textDao;

    public void addTest(Text text) {

        textDao.addContest(text);
    }

    public List<Company> selectByCode(String code) {
        // TODO Auto-generated method stub
        return textDao.selectByCode(code);
    }

    public Page<Text> selectPageByQueryVo(QueryVo queryVo) {

        Page<Text> page = new Page<Text>();
        //每页数
        page.setSize(10);

        if (null != queryVo) {
            if (null != queryVo.getPage()) {
                page.setPage(queryVo.getPage());
                queryVo.setStartRow((queryVo.getPage() - 1) * queryVo.getSize());
            }
            if (null != queryVo.getProjectName() && !"".equals(queryVo.getProjectName().trim())) {
                queryVo.setProjectName(queryVo.getProjectName().trim());
            }
            if (null != queryVo.getCompany() && !"".equals(queryVo.getCompany().trim())) {
                queryVo.setCompany(queryVo.getCompany().trim());
            }
            if (null != queryVo.getPersion() && !"".equals(queryVo.getPersion().trim())) {
                queryVo.setPersion(queryVo.getPersion().trim());
            }
            //设置总条数
            page.setTotal(textDao.textCount(queryVo));
            //结果集
            page.setRows(textDao.selectTextList(queryVo));
        }
       
        
        return page;
    }

    public void deleteById(Integer id) {
        textDao.deleteById(id);
        
    }

    public Text selectTextById(Integer id) {
        Text text = textDao.selectTextById(id);
        System.out.println(text.toString());
        
        return text;
        
    }
    
    public void updateById(Text text) {
        
        System.out.println("updatebyid");
        textDao.updateById(text);
    }
}
