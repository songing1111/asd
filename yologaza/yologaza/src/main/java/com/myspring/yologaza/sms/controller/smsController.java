package com.myspring.yologaza.sms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/sms")
public class smsController {

	  @RequestMapping(value = "/sendSms.do", method = RequestMethod.POST)
	     public String sendSms(HttpServletRequest request) throws Exception {

	       String api_key = "NCSLV2XOTGGJEVIN";
	       String api_secret = "OJLWVOHLPE1FKBKNI8EFTP3AOCUDZWSE";

	       Coolsms coolsms = new Coolsms(api_key, api_secret);
	       
	       HashMap<String, String> set = new HashMap<String, String>();

	       set.put("to", (String)request.getParameter("to")); // �޴� ���
	       set.put("from", "01026158643"); // �߽Ź�ȣ
	       set.put("text", "�ȳ��ϼ��� ������ȣ�� ["+(String)request.getParameter("text")+"]�Դϴ�"); // ���ڳ���
	       set.put("type", "sms"); // ���� Ÿ��

	       /*
	       JSONObject result = coolsms.send(set); // ������&���۰���ޱ�

	       if ((boolean)result.get("status") == true) {
	         // �޽��� ������ ���� �� ���۰�� ���
	         System.out.println("����");
	         System.out.println(result.get("group_id")); // �׷���̵�
	         System.out.println(result.get("result_code")); // ����ڵ�
	         System.out.println(result.get("result_message")); // ��� �޽���
	         System.out.println(result.get("success_count")); // �޽������̵�
	         System.out.println(result.get("error_count")); // ������ ������ ������ �޽��� ��
	       } else {
	         // �޽��� ������ ����
	         System.out.println("����");
	         System.out.println(result.get("code")); // REST API �����ڵ�
	         System.out.println(result.get("message")); // �����޽���
	       }
	      */
	       return "suc";
	     }
	
	
}
