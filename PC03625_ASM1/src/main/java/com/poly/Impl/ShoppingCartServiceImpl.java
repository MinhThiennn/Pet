package com.poly.Impl;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.service.*;
import com.poly.entity.*;

@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService{
	Map<Integer, Product> map = new HashMap<>();

	@Override
	public void add(Integer id, Product entity) {
		if (map.get(id) != null) {
			// neu san pham da co thi tang so luong len 1
			this.update(id, entity.getQuantity() + 1);
		} else {
			// neu san pham chua co tien hanh add vao gio hang
			entity.setQuantity(1);
			map.put(id, entity);
		}
	}

	@Override
	public void remove(Integer id) {
		// xoa san pham theo id
		map.remove(id);
	}

	@Override
	public void update(Integer id, int qty) {
		// update so luong
		map.get(id).setQuantity(qty);
	}

	@Override
	public void clear() {
		map.clear();
	}

	@Override
	public Collection<Product> getItems() {
		return map.values();
	}

	// tong so luong san pham
	@Override
	public int getCount() {
		int count = 0;
		Set<Integer> set = map.keySet();
		for (Integer i : set) {
			count++;
		}
		return count;
	}

	// tong tien gio hang
	@Override
	public double getAmount() {
		double amount = 0;
		Set<Integer> set = map.keySet();
		for (Integer i : set) {
			amount += map.get(i).getQuantity() * map.get(i).getPrice();
		}
		return amount;
	}
}
