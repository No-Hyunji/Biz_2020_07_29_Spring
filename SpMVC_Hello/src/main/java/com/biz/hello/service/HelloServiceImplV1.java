package com.biz.hello.service;

import org.springframework.stereotype.Service;

@Service
public class HelloServiceImplV1 implements HelloService{

	public int add(int num1, int num2) {
		int sum = num1 + num2 ;
		return sum;
	}
	
	public float add(float num1 , float num2) {
		float sum = num1 + num2;
		return sum;
	}
	public String add(String str1, String str2) {
		String strS = str1 + str2;
		return strS;
	}

}
