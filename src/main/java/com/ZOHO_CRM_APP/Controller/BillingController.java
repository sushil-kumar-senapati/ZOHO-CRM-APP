package com.ZOHO_CRM_APP.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ZOHO_CRM_APP.Entity.Billing;
import com.ZOHO_CRM_APP.Entity.Contact;
import com.ZOHO_CRM_APP.Services.BillingService;
import com.ZOHO_CRM_APP.Services.ContactService;

@Controller
public class BillingController {

	@Autowired
	private ContactService service;
	
	@Autowired
	private BillingService billingService;
	
	@RequestMapping("/generateBill")
	public String billingPage(@RequestParam("id")long id , Model model) {
		Contact contacts = service.contactById(id);
		model.addAttribute("contacts" ,contacts);
		return "generate_bill";
		
	}

	    @PostMapping("/saveBills")
	    public String saveBilling(Billing billing, Model model) {
	        billingService.saveBilling(billing);
	        model.addAttribute("mesg", "Bill generated successfully");
	        return "generate_bill";
	    }
}
