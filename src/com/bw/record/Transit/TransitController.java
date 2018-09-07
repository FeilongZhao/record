package com.bw.record.Transit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TransitController {

    
   @RequestMapping(value="/transit/add")
    public String loginToAdd() {
        
        System.out.println("111");
        
        return "add";
    }
    
}
