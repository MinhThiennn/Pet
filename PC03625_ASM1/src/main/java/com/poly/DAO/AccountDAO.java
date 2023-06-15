package com.poly.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Account;


public interface AccountDAO extends JpaRepository<Account, String> {

	Account findByUsernameAndPassword(String username, String password);
	
	
}
