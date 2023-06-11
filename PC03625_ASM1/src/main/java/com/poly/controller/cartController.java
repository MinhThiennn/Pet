package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.CartDAO;
import com.poly.DAO.CartDetailsDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.Account;
import com.poly.entity.Cart;
import com.poly.entity.CartDetail;
import com.poly.entity.Product;
import com.poly.service.SessionService;

@Controller
@RequestMapping("Fami")
public class cartController {
	
	@Autowired
	SessionService sessionService;
	
	@Autowired
	CartDetailsDAO cartDetailsDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("cart")
	public String index(Model model) {
		Account acc = sessionService.get("user");
		Cart cart = cartDAO.findByAccountUsername(acc.getUsername());
		List<CartDetail> cartdetails = cartDetailsDAO.findByCartId(cart.getId());
		model.addAttribute("items" , cartdetails);
		
		return "cart";
	}
	
	
}
