package com.bw.record.controller;

import java.security.interfaces.RSAMultiPrimePrivateCrtKey;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bw.record.pojo.Admin;
import com.bw.record.pojo.Company;
import com.bw.record.pojo.QueryVo;
import com.bw.record.pojo.Text;
import com.bw.record.service.TextService;
import com.bw.record.utils.Page;

/**
 * 查询
 * 
 * @author Alvin
 *
 */
@Controller
public class SelectController {

    // 入口
    @Autowired
    private TextService textService;

    @Value("${code}")
    private String code;
    private Integer cardNumber;

    @RequestMapping(value = "/select/list")
    public String list(Model model, QueryVo queryVo,HttpSession session) {

        // 查询公司
        List<Company> companys = textService.selectByCode(code);

        for (Company company : companys) {
            System.out.println(company.getName());
        }
        model.addAttribute("companys", companys);

        // 通过三个条件查询
        Admin admin = (Admin) session.getAttribute("admin");
        queryVo.setCardNumber(admin.getCardNumber());
        System.out.println("1111111111company" + queryVo.getCompany());
        Page<Text> page = textService.selectPageByQueryVo(queryVo);
        model.addAttribute("page", page);
        return "list";
    }

}
