package com.biz.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.biz.order.model.OrderVO;
import com.biz.order.service.OrderService;


@Controller
public class OrderController {
	/*
	 * OrderService interface를 사용하여 oService를 선언하고
	 * 이미 생성되어 Container에 보관중인 OrderServiceImplV1객체를
	 * oService에 주입하라(Dependency Inject)
	 * 결국 oService 객체를 통하여 method를 호출할 준비가 된다. 
	 */
	private OrderService oService;
	
	public String getOrder(Model model) {
		
		// 서비스에 seq(63)을 전달하고
		// 데이터 레코드를 SELECT한 결과를 받아서 
		// orderVO에 담는다. 
		OrderVO orderVO = oService.findBySeq(63);
		
		/*
		 * view(*.jsp)파일에 전달하여 Rendering을 수행 할 수 있도록
		 * model 객체에 orderVO에 데이터를 추가 해 놓는다. 
		 */
		model.addAttribute("ORDER",orderVO);
		
		/*
		 * Dispatcher야 /WEB-INF/views/order/view.jsp파일을 읽어서
		 * 클라이언트(요청한곳)으로 응답을 하여라
		 * 이 때 model에 담겨있는 데이터를  rendering할 때 사용하라
		 */
		return "order/view";
		
		
		
	}

}
