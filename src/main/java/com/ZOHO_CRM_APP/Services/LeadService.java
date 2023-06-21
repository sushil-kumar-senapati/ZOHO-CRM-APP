package com.ZOHO_CRM_APP.Services;

import java.util.List;

import com.ZOHO_CRM_APP.Entity.Lead;

public interface LeadService {
	
public void saveLead(Lead lead);

public Lead convertLead(long id);

public void deleteById(long id);

public List<Lead> listAllLeads();
}
