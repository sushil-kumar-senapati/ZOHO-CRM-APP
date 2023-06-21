package com.ZOHO_CRM_APP.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ZOHO_CRM_APP.Entity.Lead;
import com.ZOHO_CRM_APP.Repository.LeadRepository;

@Service
public class LeadServiceImpl implements LeadService {
	
	@Autowired
	private LeadRepository repo;

	@Override
	public void saveLead(Lead lead) {
		repo.save(lead);
		
	}

	@Override
	public Lead convertLead(long id) {
		Optional<Lead> find = repo.findById(id);
		Lead lead = find.get();
		return lead;
	}

	@Override
	public void deleteById(long id) {
		repo.deleteById(id);		
	}

	@Override
	public List<Lead> listAllLeads() {
		List<Lead> leads = repo.findAll();
		return leads;
	}
   
	
}