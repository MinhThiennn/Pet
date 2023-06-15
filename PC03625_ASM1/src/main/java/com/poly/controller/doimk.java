package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.AccountDAO;
import com.poly.entity.Account;
import com.poly.service.ParamService;
import com.poly.service.SessionService;

@Controller
@RequestMapping("Fami")
public class doimk {
	@Autowired
	SessionService sessionService;
	@Autowired
	ParamService paramService;
	@Autowired
	AccountDAO dao; 
	@RequestMapping("doimk")
	public String doimkne(Model model)
	{
		Account acc = sessionService.get("user"); // lưu tk login
		Account acc1 = dao.getById(acc.getUsername());
		//System.out.println(acc1.getUsername());
		String pso = paramService.getString("psOld", "");
		String pwn = paramService.getString("psNew", "");
		String pwcf = paramService.getString("psCf", "");
		if(acc1.getPassword().equals(pso)) {
			if(pwn.equals(pwcf)) {
				acc1.setPassword(pwcf);
				dao.save(acc1);
				return "redirect:home";
			}else {
				model.addAttribute("message", "Mật khẩu xác nhận không khớp !");
				return "doimk";
			}
		}else {
				model.addAttribute("message", "Sai mật khẩu cũ !");
				return "doimk";
				
		}
	//	return "doimk";
	}
}
