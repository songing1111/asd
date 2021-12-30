package com.myspring.yologaza.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface MypageController {

	public ModelAndView Mypage1(HttpServletRequest request, HttpServletResponse response) throws Exception;	
	public ResponseEntity modifyMyInfo(@RequestParam("attribute")  String attribute,
            @RequestParam("value")  String value,
            HttpServletRequest request, HttpServletResponse response)  throws Exception;
}