package com.poly.DAO;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Cart;
import com.poly.entity.CartDetail;


public interface CartDetailsDAO extends JpaRepository <CartDetail,Integer> {

	@Query("Select cd From CartDetail cd where cd.cart.id = ?1")
	List<CartDetail> findByCartId(Integer id);
	
}
