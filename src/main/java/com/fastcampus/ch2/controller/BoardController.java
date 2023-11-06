package com.fastcampus.ch2.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.fastcampus.ch2.domain.BoardDto;
import com.fastcampus.ch2.domain.PageHandler;
import com.fastcampus.ch2.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.*;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	BoardService boardService;

	@GetMapping("/list")
	public String list(@RequestParam(defaultValue ="1") Integer page,
					   @RequestParam(defaultValue = "10") Integer pageSize, Model m, HttpServletRequest request) {
		if(!loginCheck(request)){
			return "redirect:/login/login?toURL="+request.getRequestURL();  // 로그인을 안했으면 로그인 화면으로 이동
		}
		try {
			int totalCnt = boardService.getCount();
			m.addAttribute("totalCnt", totalCnt);

			PageHandler pageHandler = new PageHandler(totalCnt, page, pageSize);

			if(page < 0 || page > pageHandler.getTotalPage())
				page = 1;
			if(pageSize < 0 || pageSize > 50)
				pageSize = 10;

			Map map = new HashMap();
			map.put("offset", (page-1)*pageSize);
			map.put("pageSize", pageSize);

			List<BoardDto> list = boardService.getPage(map);
			m.addAttribute("list", list);
			m.addAttribute("ph", pageHandler);

			Instant startOfToday = LocalDate.now().atStartOfDay(ZoneId.systemDefault()).toInstant();
			m.addAttribute("startOfToday", startOfToday.toEpochMilli());
		} catch (Exception e) {
			e.printStackTrace();
			m.addAttribute("msg", "LIST_ERR");
			m.addAttribute("totalCnt", 0);
		}

		return "boardList"; // 로그인을 한 상태이면, 게시판 화면으로 이동
	}

	private boolean loginCheck(HttpServletRequest request) {
		// 1. 세션을 얻어서
		HttpSession session = request.getSession();
		// 2. 세션에 id가 있는지 확인, 있으면 true를 반환
		return session.getAttribute("id")!=null;
	}
}
