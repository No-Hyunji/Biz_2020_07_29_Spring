package com.biz.hello;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
/*
 *@RestController
 *SpringFramework 4.x 이상에서 지원되는 새로운 Controller 
 */
@RestController
public class HelloRestController {
	
	// localhost:8080/hello/rest라고 요청을 하면 응답하라
	@RequestMapping(value="/rest")
	public String rest(Model model) {
		model.addAttribute("myname","korea");
		return "Republic of Korea";
	}
	
	@RequestMapping(value="/null")
	public String mNull(Model model) {
		model.addAttribute("myname","korea");
		return null;
	}
	

}
