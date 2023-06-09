package com.poly.DAO;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entity.Account;
													
public interface AccountDAO extends JpaRepository <Account,String>{

}
