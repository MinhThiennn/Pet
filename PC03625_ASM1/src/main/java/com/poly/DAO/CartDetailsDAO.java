package com.poly.DAO;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Cart;
import com.poly.entity.CartDetail;
import com.poly.entity.ReportCountProduct;


public interface CartDetailsDAO extends JpaRepository <CartDetail,Integer> {

	@Query("Select cd From CartDetail cd where cd.cart.id = ?1")
	List<CartDetail> findByCartId(Integer id);
	
	@Query("Select count(cd.cart.id) From CartDetail cd where cd.cart.id = ?1")
	List<ReportCountProduct> getCountProductCart(Integer id);

	
}
