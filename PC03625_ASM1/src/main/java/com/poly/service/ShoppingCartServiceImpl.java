//package com.poly.service;
//
//import java.util.Collection;
//import java.util.HashMap;
//import java.util.Map;
//import java.util.Set;
//
//import org.springframework.stereotype.Service;
//import org.springframework.web.context.annotation.SessionScope;
//
//import com.poly.interfaces.ShoppingCartService;
//import com.poly.model.Item;
//
//@SessionScope
//@Service
//public class ShoppingCartServiceImpl implements ShoppingCartService {
//	Map<Integer, Item> map = new HashMap<>();
//
//	@Override
//	public void add(Integer id, Item entity) {
//		if (map.get(id) != null) {
//			this.update(id, entity.getQty() + 1);
//		} else {
//			map.put(id, entity);
//		}
//	}
//
//	@Override
//	public void remove(Integer id) {
//		map.remove(id);
//	}
//
//	@Override
//	public void update(Integer id, int qty) {
//		map.get(id).setQty(qty);
//	}
//
//	@Override
//	public void clear() {
//		map.clear();
//	}
//
//	@Override
//	public Collection<Item> getItems() {
//		return map.values();
//	}
//
//	@Override
//	public int getCount() {
//		int count = 0;
//		Set<Integer> set = map.keySet();
//		for (Integer i : set) {
//			count++;
//		}
//		return count;
//	}
//
//	@Override
//	public double getAmount() {
//		double amount = 0;
//		Set<Integer> set = map.keySet();
//		for (Integer i : set) {
//			amount += map.get(i).getQty() * map.get(i).getPrice();
//		}
//		return amount;
//	}
//}
