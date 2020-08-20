package com.biz.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value="/product")
@Controller
public class ProductController {
	
	// insert GET method : 상품 정보 추가 anchor를 클릭했을 때
	// write 화면을 보여주는 method.
	@RequestMapping(value="/insert", method=RequestMethod.GET)
	public String insert(Model model) {
		
		// return "product/product_write";	
		model.addAttribute("BODY","PRO_WRITE");
		return "home";
	}


}
