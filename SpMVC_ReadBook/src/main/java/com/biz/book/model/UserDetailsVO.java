package com.biz.book.model;

import java.util.Collection;

import javax.swing.Spring;

import org.apache.ibatis.type.Alias;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Getter;
import lombok.Setter;

@Alias("UserDetail")
@Getter
@Setter
public class UserDetailsVO implements UserDetails{
	
	/*
	 * http프로토콜을 통해서 VO를 주고 받을 때
	 * 데이터 JSON형태로 이동이 되는데 
	 * 일렬로 나열된 문자열 형태로 네트워크를 이용해서 이동한다
	 */
	private static final long serialVersionUID = 1L;  
	private long id;
	private String username;
	private String password;
	
	private boolean isEnabled;
	private boolean isAccountNonExpired;
	private boolean isAccountNonLocked;
	private boolean isCredentialsNonExpired;
	
	// List<GrandtedAuthriy>
	private Collection<? extends GrantedAuthority> authorities;
	
	Spring email;
	String phone;
	String address;
}
