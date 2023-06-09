package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.AccountDAO;
import com.poly.entity.Account;

@Controller
@RequestMapping("Fami")
public class userController {
	@Autowired
	AccountDAO accountDAO;

	
}
