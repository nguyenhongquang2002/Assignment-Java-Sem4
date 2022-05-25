package com.example.ASM.controller;

import com.example.ASM.HelloServlet;
import com.example.ASM.entity.Account;
import com.example.ASM.model.AccountModel;
import com.example.ASM.model.MySqlAccountModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateAccountServlet extends HelloServlet {

    private AccountModel accountModel;

    @Override
    public void init() throws ServletException {
        accountModel = new MySqlAccountModel();
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Account account = accountModel.findById(id);
        req.setAttribute("account", account);
        req.getRequestDispatcher("/account/edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; chartset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(req.getParameter("id"));
        String fullName = req.getParameter("fullName");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        int status = Integer.parseInt(req.getParameter("status"));
        Account account = new Account(fullName, username, email, password, status);
        if(accountModel.update(id, account)) {
            resp.sendRedirect("/accounts");
        }
    }
}
