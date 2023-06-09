package com.poly.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Cart;
import com.poly.entity.CartDetail;

public interface CartDetailsDAO extends JpaRepository <CartDetail,Integer> {

}
