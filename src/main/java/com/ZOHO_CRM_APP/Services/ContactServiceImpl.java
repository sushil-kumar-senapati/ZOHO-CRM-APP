package com.ZOHO_CRM_APP.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ZOHO_CRM_APP.Entity.Contact;
import com.ZOHO_CRM_APP.Repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService {
	
	@Autowired
	private ContactRepository repo;

	@Override
	public void saveContact(Contact contact) {
		repo.save(contact);
		
	}

	@Override
	public List<Contact> listAllContacts() {
	   List<Contact> contacts = repo.findAll();
		return contacts;
	}

	@Override
	public Contact contactById(long id) {
		Optional<Contact> byid = repo.findById(id);
		Contact contacts = byid.get();
		return contacts;
	}

}
