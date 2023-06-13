package com.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.CartDAO;
import com.poly.DAO.CartDetailsDAO;
import com.poly.DAO.OrderDAO;
import com.poly.DAO.ProductDAO;
import com.poly.entity.Account;
import com.poly.entity.Cart;
import com.poly.entity.CartDetail;
import com.poly.entity.Product;
import com.poly.service.ParamService;
import com.poly.service.SessionService;
import com.poly.entity.Order;
@Controller
@RequestMapping("Fami")
public class thanhToan {
	@Autowired
	SessionService sessionService;

	@Autowired
	CartDetailsDAO cartDetailsDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	OrderDAO orderDAO;
	@Autowired
	ParamService paramService;
	@RequestMapping("cart-tt")
	public String thanhtoan(Model model) {
		Account acc = sessionService.get("user");
		Cart cart = cartDAO.findByAccountUsername(acc.getUsername());
		List<CartDetail> cartdetails = cartDetailsDAO.findByCartId(cart.getId());
		model.addAttribute("items", cartdetails);
			
		return "cart-tt";
	}
	@RequestMapping("cart/thanhtoan/bill")
	public String add(Model model, CartDetail cartdetail ) {
		Account acc = sessionService.get("user"); // lấy dữ liệu user đag đang nhập
		//Product product = productDAO.findById(productid).get();
		Cart cart = cartDAO.findByAccountUsername(acc.getUsername());
		Order order = new Order();
		order.setAccount(cart.getAccount());
		//order.setCreateDate(new Date());
		order.setAddress(acc.getAddress());
		orderDAO.save(order);
		return "redirect:/Fami/cart-tt";
	}
}
