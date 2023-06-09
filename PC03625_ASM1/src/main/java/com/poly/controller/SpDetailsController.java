package com.poly.controller;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.CategoryDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.Category;
import com.poly.entity.Product;
import com.poly.service.SessionService;
import jakarta.servlet.ServletContext;

@Controller
public class SpDetailsController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	SessionService session;

	@Autowired
	ServletContext app;

	@RequestMapping("Fami/sp-detail/{id}")
	public String edit (Model model, @PathVariable("id")Integer id) {
	Product item = productDAO.getById(id);
	model.addAttribute("item", item);
	return "sp-detail";
	}
	
	@ModelAttribute("load") // ${load}
	public Product load (Model model, @PathVariable("id")Integer id) {
	Product entity = productDAO.getById(id);
	return entity;
	}
}
