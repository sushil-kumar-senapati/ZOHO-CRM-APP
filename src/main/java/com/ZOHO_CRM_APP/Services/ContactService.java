package com.ZOHO_CRM_APP.Services;

import java.util.List;

import com.ZOHO_CRM_APP.Entity.Contact;

public interface ContactService {

	public void saveContact(Contact contact);

	public List<Contact> listAllContacts();

	public Contact contactById(long id);

}
