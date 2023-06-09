package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.poly.DAO.AccountDAO;
import com.poly.entity.Account;

@Controller
@RequestMapping("Fami")
public class indexController {
	
	@Autowired
	AccountDAO dao;
	
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
