package com.poly.controller;
import java.util.List;
import jakarta.servlet.http.HttpSession;
import com.poly.entity.Account;
import com.poly.DAO.AccountDAO;
import com.poly.service.ParamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("Fami")
public class register {
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	HttpSession session;
	
	@RequestMapping("dangki")
	public String sigupn(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		List<Account> items = accountDAO.findAll();
		model.addAttribute("items", items);
		return "dangki";
	}
	
	@PostMapping("create")
	public String register(Account item,HttpSession session){
		String pw = paramService.getString("password", "");
		String cf = paramService.getString("confirm", "");
		if(!pw.equals(cf)) {
			session.setAttribute("message", "Pass và Confirm không khớp !");
		}else {
		boolean vaiTro = false;
		boolean trangThai = true;	
		item.setAdmin(vaiTro);
		item.setActivated(trangThai);
		accountDAO.save(item);
		session.setAttribute("message", "Tạo thành công !");
	}
		return "redirect:dangki";
					
}
}
