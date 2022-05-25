package com.example.ASM.model;

import com.example.ASM.entity.Account;

import java.util.List;

public interface AccountModel {
    boolean save (Account account);
    boolean update(int id, Account account);
    boolean delete(int id);
    Account findById(int id);
    List<Account>findAll();
}
