package com.poly.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.OrderDAO;
import com.poly.DAO.OrderDetailsDAO;
import com.poly.entity.Account;
import com.poly.entity.Order;
import com.poly.entity.OrderDetail;
import com.poly.service.SessionService;

@Controller
@RequestMapping("Fami")
public class lichSuController {
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailsDAO orderDetailsDAO;
	
	@Autowired
	SessionService sessionService;
	
	@RequestMapping("lichsu")
	public String index(Model model) {
		Account acc = sessionService.get("user");
		List<Order> listorder = orderDAO.findByAccount(acc);
		model.addAttribute("listorder", listorder);
		return "lichsu";
	}
	
	@RequestMapping("chitiet/{id}")
	public String detail(Model model, @PathVariable("id") Integer id) {
		Order order = orderDAO.findById(id).get();
		List<OrderDetail> orderdetail = orderDetailsDAO.findByOrder(order);
		model.addAttribute("orderdetail", orderdetail);
		return "lichsuchitiet";
	}
	
	@RequestMapping("chitiet/remove/{id}")
	public String remove(Model model, @PathVariable("id") Integer id) {
		Order order = orderDAO.findById(id).get();
		List<OrderDetail> orderdetai = orderDetailsDAO.findByOrder(order);
		for (OrderDetail orderDetail : orderdetai) {
			orderDetailsDAO.delete(orderDetail);
		}
		orderDAO.delete(order);
		
		return "redirect:/Fami/lichsu";
	}
}
