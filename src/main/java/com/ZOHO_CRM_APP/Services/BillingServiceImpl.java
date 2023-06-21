package com.ZOHO_CRM_APP.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ZOHO_CRM_APP.Entity.Billing;
import com.ZOHO_CRM_APP.Repository.BillingRepository;

@Service
public class BillingServiceImpl implements BillingService {

    @Autowired
    private BillingRepository billingRepository;

    @Override
    public void saveBilling(Billing billing) {
        billingRepository.save(billing);
    }
}
