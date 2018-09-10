package com.bw.record.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.bw.record.pojo.Admin;
/**
 * 权限限制未登录查看内容
 * @author Alvin
 *
 */
public class PermissionInterceptor implements HandlerInterceptor{

    private Admin admin ;
    
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object object, Exception exception)
            throws Exception {
        // TODO Auto-generated method stub
        
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object object, ModelAndView modelAndView)
            throws Exception {
        // TODO Auto-generated method stub
        
    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
       
        String requestUrl = request.getRequestURI();
        
        if (!requestUrl.contains("/login")) {
            admin =  (Admin) request.getSession().getAttribute("admin");
            if (null == admin) {
                
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                return false;
            }
        }
       
        return true;
    }

}
