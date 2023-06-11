package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.CategoryDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.Product;
import com.poly.service.SessionService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("Fami")
public class SpDetailsController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	SessionService session;

	@Autowired
	ServletContext app;
	
	@RequestMapping("sanpham/edit/{id}")
	public String edit (Model model, @PathVariable("id")Integer id) {
	Product item = productDAO.findById(id).get();
	model.addAttribute("item", item);
	return "sp-detail";
	}
	
	@RequestMapping("sanpham")
	public String index(Model model) {
		Product item = new Product();
		model.addAttribute("item", item);
		return "sp-detail";
	}
	
}
