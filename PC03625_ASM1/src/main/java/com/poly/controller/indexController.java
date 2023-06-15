package com.poly.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("Fami")
public class indexController {

	@Autowired
	HttpSession session;
	
	@GetMapping("lienhe")
	public String lienhe() {
		return "lienhe";
	}
	
	@GetMapping("gioithieu")
	public String thoithieu() {
		return "gioithieu";
	}
	
	@GetMapping("thanhtoan")
	public String cardtt() {
		return "cart-tt";
	}
	@GetMapping("doimk")
	public String doimk() {
		return "doimk";
	}

	@GetMapping("tintuc")
	public String tintuc() {
		return "tintuc";
	}
	@GetMapping("404page")
	public String trangLoi() {
		return "404page";	

	}
}
