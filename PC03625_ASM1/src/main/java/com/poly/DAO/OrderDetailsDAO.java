package com.poly.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Order;
import com.poly.entity.OrderDetail;

public interface OrderDetailsDAO extends JpaRepository <OrderDetail,Integer> {

	List<OrderDetail> findByOrder(Order order);
}
