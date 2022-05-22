package com.example.ASM.controller;

import com.example.ASM.entity.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/user/register.jsp").forward( req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String username= req.getParameter("username");
        String fullName= req.getParameter("fullName");
        String password= req.getParameter("password");
        String email= req.getParameter("email");
        String phone = req.getParameter("phone");
        String birthday = req.getParameter("birthday");
        String confirmPassword= req.getParameter("confirmPassword");

        Student student = new Student();
        student.setUsername (username);
        student.setPassword(password);
        student.setFullName(fullName);
        student.setEmail(email);
        student.setPhone(phone);
        student.setBirthday(birthday);
        req.setAttribute("student", student);
        req.getRequestDispatcher( "/user/register-success.jsp").forward(req,resp);
    }
}
