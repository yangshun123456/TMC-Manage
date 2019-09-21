package com.mytest.controller;

import com.mytest.entity.Admin;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "MyFilter")
public class MyFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        Admin admin = (Admin) request.getSession ().getAttribute ("admin");

        if (admin == null) {
            response.sendRedirect (request.getContextPath ()+"/error.jsp");

        } else {
            chain.doFilter (req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
