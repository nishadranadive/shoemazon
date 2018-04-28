package com.me.springmvcshoemazon.dao;

import com.me.springmvcshoemazon.entity.Account;

public interface AccountDAO {
 
    
    public Account findAccount(String userName);
    
}