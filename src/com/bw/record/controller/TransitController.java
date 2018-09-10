package com.bw.record.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TransitController {

    
   @RequestMapping(value="/transit/add")
    public String loginToAdd() {
        
        System.out.println("111");
        
        return "add";
    }
   
   
   @RequestMapping(value="/transit/list" ,method= RequestMethod.GET)  
   public String  addToList() {
       
       System.out.println("1111111111111111111111111111");
       
       return "list";
   }
   
   
   @RequestMapping(value = "/transit/myinfo")
   public String toMyInfo() {
       
       System.out.println("toMyInfo");
       return "myinfo";
   }
    
}
