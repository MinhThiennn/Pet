package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.AccountDAO;
import com.poly.entity.Account;
import com.poly.service.CookieService;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("Fami")
public class loginController {

	@Autowired
	CookieService cookieService;

	@Autowired
	ParamService paramService;

	@Autowired
	SessionService sessionService;

	@Autowired
	AccountDAO dao; // làm việc với bảng Account

	@RequestMapping("login")
	public String login(Model model) {
		String user = cookieService.getValue("user");
		if (user != null) {
			model.addAttribute("user", user);
		}
		return "login";
	}
	

	@RequestMapping("login")
	public String save() {
		String un = paramService.getString("username", "");
		Boolean rm = paramService.getBoolean("remember", false);


		return "login";
	}
	
}
