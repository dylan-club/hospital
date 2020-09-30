package com.nicklaus.filter;


import com.nicklaus.pojo.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;


@WebFilter(urlPatterns = {"/header.jsp","/registration.jsp","/doctor.jsp","/payment.jsp","/withdraw.jsp"})
public class LoginFilter implements Filter {

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException, IOException {
        //强制转型
        HttpServletRequest request = (HttpServletRequest) req;

        User user = (User)request.getSession().getAttribute("loginUser");


        //如果用户已经登录
        if (user != null){
            //放行
            chain.doFilter(req, resp);
        }else{
            //如果用户没有登录，将请求转发到登录界面
            request.getRequestDispatcher("/forbidden.jsp").forward(request,resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

    public void destroy() {

    }

}
