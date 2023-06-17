package com.poly.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.DAO.OrderDAO;
import com.poly.entity.Account;
import com.poly.entity.Order;
import com.poly.service.SessionService;

@Controller
@RequestMapping("Fami")
public class adminlichsuController {
	@Autowired
	SessionService sessionService;
	
	@Autowired
	OrderDAO orderDAO;
	
	@RequestMapping("adminlichsu")
	public String index(Model model) {
		List<Order> listorder = orderDAO.findAll();
		model.addAttribute("listorder", listorder);
		return "adminlichsu";
	}
	
	@RequestMapping("adminlichsu/update")
	public String update(Model model, @RequestParam("id") Integer id, @RequestParam("status") String status) {
		Optional<Order> op = orderDAO.findById(id);
		if(op.isPresent()) {
			Order order = op.get();
			order.setStatus(status);
			orderDAO.save(order);
		}
			
		return "redirect:/Fami/adminlichsu";
	}
}
