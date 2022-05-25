package com.example.ASM.model;

import com.example.ASM.entity.Account;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MySqlAccountModelTest {

    @Test
    void save() {
        MySqlAccountModel mySqlAccountModel = new MySqlAccountModel();
        Account account = new Account("Quang" , "hong" , "quang@gmail.com" , "1132" , 1);
        assertEquals(true, mySqlAccountModel.save(account));
    }
}