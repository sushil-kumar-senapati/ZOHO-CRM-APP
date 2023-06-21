package com.ZOHO_CRM_APP.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ZOHO_CRM_APP.Entity.Contact;

public interface ContactRepository extends JpaRepository<Contact, Long> {

}
