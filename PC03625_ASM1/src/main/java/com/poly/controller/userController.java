package com.poly.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.AccountDAO;
import com.poly.DAO.CartDAO;
import com.poly.entity.Account;
import com.poly.entity.Product;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("Fami")
public class userController {
	@Autowired
	AccountDAO accountDAO;

	@Autowired
	SessionService session;
	
	@Autowired
	ServletContext app;
	
	@RequestMapping("user")
	public String index(Model model) {
		return "userdetails";
	}
}
