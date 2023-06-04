package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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

	@GetMapping("login")
	public String login(Model model) {
		String user = cookieService.getValue("user");
		if (user != null) {
			model.addAttribute("user", user);
		}
		return "login";
	}
	

	@PostMapping("login")
	public String save(Model model) {
		String un = paramService.getString("username", "");
		String pw = paramService.getString("password", "");
		Boolean rm = paramService.getBoolean("remember", false);
		
		
		Account acc = dao.findById(un).get();
		Boolean ad = acc.getAdmin();
		if(acc.getAdmin()) {
			model.addAttribute("admin", ad);
		}
		if(!un.equalsIgnoreCase(acc.getUsername()) || !pw.equalsIgnoreCase(acc.getPassword())) {
			model.addAttribute("message", "Sai thông tin");
			return "login";
		}else {
			sessionService.set("username", un);
			sessionService.set("admin", ad);
			if(rm) {
				cookieService.add("user", un, 10);
			}else {
				cookieService.remove("user");
			}
			
			model.addAttribute("message", "Đăng nhập thành công!");
		}

		return "redirect:home";
	}
	
}
