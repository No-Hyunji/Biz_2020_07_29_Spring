package com.biz.book.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.book.mapper.BookDao;
import com.biz.book.model.BookVO;
import com.biz.book.model.ReadBookVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/books")
public class BooksController {
	
	@Autowired
	private BookDao bookDao;
	
	@Transactional
	// localhost:8080/book/books
	// localhost:8080/book/books/
	// @ResponseBody
	@RequestMapping(value={"/",""},method=RequestMethod.GET)
	public String list(Model model) {
		
		List<BookVO> bookList = bookDao.selectAll();
		model.addAttribute("BOOKS",bookList);
		model.addAttribute("BODY","BOOK-LIST");
		return "home";
	}
	
	@RequestMapping(value="/input",method=RequestMethod.GET)
	public String input(Model model) {
		
		LocalDate localDate = LocalDate.now();
		String todayString = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(localDate);
		BookVO bookVO = BookVO.builder().buydate(todayString).build();
		
		model.addAttribute("BODY","BOOK-WRITE");
		model.addAttribute("bookVO",bookVO);
		return "home";
		

		// Controller의 Mapping method에 return type이 String일 때 
		// null값을 return하면 
		// method를 호출할 때 사용했던 mapping URL.jsp형식의 return문이
		// 자동으로 생성된다.
		// spring이 해주는 기능
	}
	
	/*
	 * spring form taglib를 사용하여 write form을 만들었을 경우에는 
	 * VO 클래스, 객체를 매개변수로 사용할 때 
	 * @ModelAttribute("VO")를 필수로 사용하자
	 * 
	 */
	@RequestMapping(value="/input",method=RequestMethod.POST)
	public String input(@ModelAttribute("bookVO")BookVO bookVO) {
		log.debug(bookVO.toString());
		int ret = bookDao.insert(bookVO);
		if(ret < 1) {
			// insert가 실패했으므로 그에 대한 메시지를 보여주는 페이지로  Jump
		}
		return "redirect:/books";
	}
	
	// localhost:8080/book/books/detail/3 이라고 Request가 오면
	// 맨 끝에 숫자3를을 Mapping 주소의 {book_seq}위치에 Mapping한다
	// 매개변수에 설정된 PathVariable에 따라 String id 변수에 
	// 3의 값이 할당되어 method에 전달된다. 
	@RequestMapping(value="/detail/{book_seq}",method=RequestMethod.GET,
			produces = "application/json;charset=utf8")
	public String detail(
			@PathVariable("book_seq") String id, Model model) {
		
		log.debug("PATH : {}",id);
		long seq = Long.valueOf(id);
		BookVO bookVO = bookDao.findById(seq);
		LocalDateTime lDateTime = LocalDateTime.now();
		String lDate = DateTimeFormatter.ofPattern("yyyy-MM-dd").format(lDateTime);
		String lTime = DateTimeFormatter.ofPattern("HH:mm:SS").format(lDateTime) ;
		
		ReadBookVO readBookVO = ReadBookVO.builder().r_date(lDate).r_stime(lTime).build();
		
		model.addAttribute("readbookVO",readBookVO);
		model.addAttribute("BODY","BOOK-DETAIL");
		return "home";
	}
}
