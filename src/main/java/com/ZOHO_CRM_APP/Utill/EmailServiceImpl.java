package com.ZOHO_CRM_APP.Utill;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
	private JavaMailSender sender;
	
	@Override
	public void trigerEmail(String email, String subject, String content) {
		 SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo(email);
	        message.setSubject(subject);
	        message.setText(content);
	        
	        sender.send(message);
		
	}

}
