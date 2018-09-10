package com.bw.record.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class LoginHandlerException implements HandlerExceptionResolver {

   
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object obj,
            Exception exception) {

        String msg;
        ModelAndView modelAndView = new ModelAndView();
        System.out.println( "adadasdfadfa" +exception.getClass());
        
        if (exception instanceof PasswordWrongException) {
            PasswordWrongException passwordWrongException = (PasswordWrongException) exception;
          //  msg = exception.getMessage();
            modelAndView.addObject("errorMsg", passwordWrongException.getText());
          //  System.out.println(msg);
            modelAndView.setViewName("index");
            return modelAndView;
        } else {
            modelAndView.addObject("errorMsg", "未知异常");
            modelAndView.setViewName("error");
          //  System.out.println( "adadasdfadfa" +exception.getClass().getName());
          //  System.out.println(new PasswordWrongException(null).getClass());
        }      
       return modelAndView;
    }

}
