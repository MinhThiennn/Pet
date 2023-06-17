package com.poly.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Account;
import com.poly.entity.Order;

public interface OrderDAO extends JpaRepository <Order,Integer>{

	
	List<Order> findByAccount(Account account);
}
