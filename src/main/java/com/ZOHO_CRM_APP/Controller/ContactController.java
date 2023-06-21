package com.ZOHO_CRM_APP.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ZOHO_CRM_APP.Entity.Contact;
import com.ZOHO_CRM_APP.Entity.Lead;
import com.ZOHO_CRM_APP.Services.ContactService;

@Controller
public class ContactController {
	
	
     @Autowired
	private ContactService conService;
	
	 @RequestMapping("/listAllContacts")
	 public String listAllContacts(Model model) {
	    	List<Contact> contacts = conService.listAllContacts();
			model.addAttribute("contacts", contacts);
			
			return "list_contacts";
	    	
	    }
	
}
