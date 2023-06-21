package com.ZOHO_CRM_APP.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ZOHO_CRM_APP.Utill.Email;
import com.ZOHO_CRM_APP.Utill.EmailService;

@Controller
public class EmailController {
	
	@Autowired
	private EmailService service;
	
	@PostMapping("/sendEmail")
	public String getEmailId(@RequestParam("email")String email , Model model) {
		model.addAttribute("email",email);
		return "compose_email";
		
	}
	@PostMapping("/trigerEmail")
	public String trigerEmail(Email email , Model model) {
		service.trigerEmail(email.getEmail(),email.getSubject(),email.getContent());
		model.addAttribute("msg" ,"email sent sucessfully");
		return "compose_email";
		
	}

}
