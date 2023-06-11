package com.poly.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.DAO.AccountDAO;
import com.poly.entity.Account;
import com.poly.service.MailerServiceImpl;
import com.poly.service.ParamService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("Fami")
public class Forgot {
	@Autowired
	MailerServiceImpl mailer;
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	ParamService paramService;
	@Autowired
	HttpSession session;
	@RequestMapping("quenmk")
	public String quenmk(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		List<Account> items = accountDAO.findAll();
		model.addAttribute("items", items);
		return "quenmk";
	}
	@RequestMapping("sendmail")
	public String sendmail(Model model) {
		List<Account> items = accountDAO.findAll();
		model.addAttribute("items", items);
		String id = paramService.getString("username", "");
        String email =  paramService.getString("email","");
        String ps = "";
         boolean check = false;
         for (Account account : items) {
             if(id.equals(account.getUsername())){
             if (email.equals(account.getEmail())) {
                   ps = account.getPassword();
                  check = true;
             } else {
                 check = false;       
         }
     }
             }
             if(check==true){
            	 session.setAttribute("message", "Mật khẩu đã được gửi về mail, vui lòng kiểm tra !");
            	 mailer.send(email, "Bạn đang thực hiện chức năng quên mật khẩu ", "Mật khẩu của bạn là:"+ps);
       
             }else{
            	 session.setAttribute("message", "Không tồn tại email hoặc username !");
             }
		return "redirect:quenmk";
	}
}
