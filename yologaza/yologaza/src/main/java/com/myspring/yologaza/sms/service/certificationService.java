package com.myspring.yologaza.sms.service;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class certificationService {
	public static void certifiedPhoneNumber(String phoneNumber, String cerNum) {
		
	    String api_key = "NCSLV2XOTGGJEVIN";
	    String api_secret = "OJLWVOHLPE1FKBKNI8EFTP3AOCUDZWSE";
	    Message coolsms = new Message(api_key, api_secret);
	
	    // 4 params(to, from, type, text) are mandatory. must be filled
        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", phoneNumber);    // ������ȭ��ȣ
        params.put("from", "01026158643");    // �߽���ȭ��ȣ. �׽�Ʈ�ÿ��� �߽�,���� �Ѵ� ���� ��ȣ�� �ϸ� ��
        params.put("type", "SMS");
        params.put("text", "��ΰ��� �޴������� �׽�Ʈ �޽��� : ������ȣ��" + "["+cerNum+"]" + "�Դϴ�.");
        params.put("app_version", "test app 1.2"); // application name and version

        try {
            JSONObject obj = (JSONObject) coolsms.send(params);
            System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getCode());
        }

    }
}
