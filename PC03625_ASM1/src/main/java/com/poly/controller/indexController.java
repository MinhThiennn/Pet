package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Fami")
public class indexController {
	@GetMapping("lienhe")
	public String lienhe() {
		return "lienhe";
	}
	
	@GetMapping("gioithieu")
	public String thoithieu() {
		return "gioithieu";
	}
	
	@GetMapping("dangnhap")
	public String login() {
		return "login";
	}
	
	@GetMapping("dangki")
	public String singup() {
		return "dangki";
	}
	
	@GetMapping("sanpham")
	public String product() {
		return "sp-detail";
	}
	
	@GetMapping("thanhtoan")
	public String cardtt() {
		return "cart-tt";
	}
	
	@GetMapping("quenmk")
	public String quenmk() {
		return "quenmk";
	}
	@GetMapping("doimk")
	public String doimk() {
		return "doimk";
	}
	@GetMapping("giohang")
	public String card() {
		return "cart";
	}
}
