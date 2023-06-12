package com.poly.service;

import java.util.Collection;
import com.poly.entity.Product;

public interface ShoppingCartService {
	void add(Integer id, Product entity);

	void remove(Integer id);

	void update(Integer id, int qty);

	void clear();

	Collection<Product> getItems();

	int getCount();

	double getAmount();
}
