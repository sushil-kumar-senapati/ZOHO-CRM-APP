package com.ZOHO_CRM_APP.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ZOHO_CRM_APP.Entity.Contact;
import com.ZOHO_CRM_APP.Entity.Lead;
import com.ZOHO_CRM_APP.Services.ContactService;
import com.ZOHO_CRM_APP.Services.LeadService;


@Controller
public class LeadController {
	
	@Autowired
	private LeadService service;
	
	@Autowired
	private ContactService conService;
	
    @GetMapping("/viewCreateLeadPage")
	public String viewCreateLeadPage() {
    	
		return "Create_new_lead";
		
	}
    
    @PostMapping("/saveLead")
    public String saveLead(@ModelAttribute Lead lead, Model model) {
        // Save the lead data to the database or perform any required processing
        service.saveLead(lead);

        // Add the lead object to the model for displaying lead information
        model.addAttribute("lead", lead);

        return "lead_info";
    }
    
    @PostMapping("/convertLead")
    public String convertLead(@RequestParam("id")long id , Model model) {
        // Save the lead data to the database or perform any required processing
       Lead lead = service.convertLead(id);

      Contact con = new Contact();
      con.setFirstName(lead.getFirstName());
      con.setLastName(lead.getLastName());
      con.setEmail(lead.getEmail());
      con.setMobile(lead.getMobile());
      con.setSource(lead.getSource());

      conService.saveContact(con);
      
      service.deleteById(id);
      
      List<Contact> contacts = conService.listAllContacts();
      model.addAttribute("contacts", contacts);
		
		return "list_contacts";
    }
    
    @RequestMapping("/listAllLeads")
    public String listAllLeads(Model model) {
    	List<Lead> leads = service.listAllLeads();
		model.addAttribute("leads", leads);
		
		return "list_leads";
    	
    }
      
    @RequestMapping("/leadInfo")
    public String leadInfo(@RequestParam("id")long id , Model model) {
    	Lead lead = service.convertLead(id);
    	model.addAttribute("lead", lead);
		return "lead_info";
    	
    }
}
