*** Variables *** 
# Application Expected Values 'e_<variableName
# Application Locator 'KU_<locatorName>'
${e_HI_missingPANTitle} =  PAN missing
${e_HI_missingPANSubTitle} =  Submit PAN to enable Health Protect.
${e_HI_premiumText} =  Premium
${e_HI_defaultPremiumValue} =  ₹0/Y
${e_HI_pincodeField} =  560004
${e_HI_stateField} =  Karnataka
${e_HI_cityField} =  Bengaluru
${e_HI_phoneNumLabel} =  Phone number
${e_HI_completeAddress} =  Sri Lakshminarayana Mansion Tata Silk Farm,Jayanagar
${e_HI_endorsementLink} =  Endorsement wording                   
${e_HI_policyWordingLink} =  Policy wording                  
${e_HI_generalExclusionLink} =  General exclusions                    
${e_HI_cashlessHospitalLink} =  List of cashless hospitals
${e_HI_coverTitle} =  Policies
${e_HI_totalCoverDesc} =  Total cover\n₹10.0 L + ₹2.0 K Daily cash
${e_HI_totalPremiumDesc} =  Total premium/Y\n₹8,620 
${e_HI_coverageRowTitle} =  Coverage breakdown\nExpires on\nPolicy documents
${e_HI_policyDetails1} =  Group health\nBharti AXA Health Assure Base\nCover\n₹3.0 L\nPremium\n₹6.3 K\nExpires on\n23 Jun 22
${e_HI_policyDetails2} =  Group health\nBharti AXA Health Assure Super Top Up\nCover\n₹7.0 L\nPremium\n₹1.3 K\nExpires on\n23 Jun 22
${e_HI_policyDetails3} =  Group health\nBharti AXA Daily Cash Allowance\nCover\n₹2.0 K / day\nPremium\n₹999\nExpires on\n23 Jun 22
${e_HI_expiryDateForPolicy} =  24 Jan 2022
${e_HI_bannerDesc} =  Get ₹50L health cover starting at ₹900 p.m. T&C apply\nSecure your loved ones today.
${e_HI_facebookTitle} =  Facebook
${e_HI_twitterTitle} =  Twitter
${e_HI_whatsappTitle} =  Share on WhatsApp
${e_HI_telegramTitle} =  Telegram: Share Web Page
${e_HI_spreadTheWord} =  Spread the word
       

@{e_HI_healthAssurePolicyList} =  Certificate of Insurance  Premium certificate  List of cashless hospitals  Policy wording  Endorsement wording
@{e_HI_dailyAllowanceList} =  Certificate of Insurance  Premium certificate  List of cashless hospitals  Policy wording

# Application Locator 'KU_<locatorName>'   
# Kuvera :: Wealth Management Simplified
${KU_W_HI_missingPANTitle} =  xpath=//div[@class='b-insurance__title b-insurance-confirm-modal__title']
${KU_W_HI_missingPANSubTitle} =  xpath=//div[@class='b-insurance__subtitle b-insurance-confirm-modal__subtitle']
${KU_W_HI_missingPANOkayBtn} =  xpath=//div[@class='b-insurance-confirm-modal__btn--okay']
${KU_W_HI_pageTitle} =  xpath=//div[@class='b-insurance__title']
${KU_W_HI_pincodeField} =  xpath=//input[@id='pincode']
${KU_W_HI_state_cityDropdownList} =  xpath=(//ul[@class='dropdown-menu']//li)[1]
${KU_W_HI_phoneNum_usernameLabel} =  xpath=(//label[@class='b-text-field__label'])[1]
${KU_W_HI_documentLinkCloseBtn} =  xpath=//div[@class='modal-content-desktop']//img[@alt='close-btn-img']
${KU_W_HI_dropdownIndicator} =  xpath=//img[@class='indicator-alignment']
${KU_W_HI_sectionSubTitle1} =  xpath=(//div[@class='b-insurance__description'])[1]
${KU_W_HI_sectionSubTitle2} =  xpath=(//div[@class='b-insurance__description'])[2]
${KU_W_HI_sectionSubTitle3} =  xpath=(//div[@class='b-insurance__description'])[3]
${KU_W_HI_sectionSubTitle4} =  xpath=(//div[@class='b-insurance__description'])[4]
${KU_W_HI_endorsementLink} =  xpath=//div[contains(text(),'Endorsement wording')]
${KU_W_HI_policyWordingLink} =  xpath=//div[contains(text(),'Policy wording')]
${KU_W_HI_generalExclusionsLink} =  xpath=//div[contains(text(),'General exclusions')]
${KU_W_HI_cashlessHospitalLink} =  xpath=//div[contains(text(),'List of cashless hospitals')]
${KU_W_HI_confirmOTPBtn} =  xpath=//button[text()=' Confirm with OTP ']
${KU_W_HI_coverTitle} =  xpath=//div[@class='b-kuvera-protect-template__title']
${KU_W_HI_totalCoverDesc} =  xpath=//div[@class='b-health-premium-summary__total-cover']
${KU_W_HI_totalPremiumDesc} =  xpath=//div[@class='b-health-premium-summary__total-premimum']
${KU_W_HI_coverageRowTitle} =  xpath=//div[@class='b-health-protect-row__content-titles']
${KU_W_HI_policyName1} =  xpath=//div[contains(text(),'Bharti AXA Health Assure Base')]
${KU_W_HI_policyName2} =  xpath=//div[contains(text(),'Bharti AXA Health Assure Super Top Up')]
${KU_W_HI_policyName3} =  xpath=//div[contains(text(),'Bharti AXA Daily Cash Allowance')]
${KU_W_HI_healthProtectTag1} =  xpath=(//div[@class='b-health-protect-row__tag'])[1]
${KU_W_HI_healthProtectTag2} =  xpath=(//div[@class='b-health-protect-row__tag'])[2]
${KU_W_HI_healthProtectTag3} =  xpath=(//div[@class='b-health-protect-row__tag'])[3]
${KU_W_HI_cover1} =  xpath=(//div[contains(text(),'Cover')])[1]
${KU_W_HI_cover1Val} =  xpath=//div[contains(text(),'₹3.0 L')]
${KU_W_HI_cover2} =  xpath=(//div[contains(text(),'Cover')])[2]
${KU_W_HI_cover3Val} =  xpath=//div[contains(text(),'₹2.0 K')]
${KU_W_HI_cover3} =  xpath=(//div[contains(text(),'Cover')])[3]
${KU_W_HI_cover2Val} =  xpath=//div[contains(text(),'₹7.0 L')]
${KU_W_HI_premium1} =  xpath=(//div[contains(text(),'Premium')])[1]
${KU_W_HI_premium1Val} =  xpath=//div[contains(text(),'₹6.3 K')]
${KU_W_HI_premium2} =  xpath=(//div[contains(text(),'Premium')])[2]
${KU_W_HI_premium3Val} =  xpath=//div[contains(text(),'999')]
${KU_W_HI_premium3} =  xpath=(//div[contains(text(),'Premium')])[3]
${KU_W_HI_premium2Val} =  xpath=//div[contains(text(),'₹1.3 K')]
${KU_W_HI_expiresTag1} =  xpath=(//div[contains(text(),'Expires on')])[1]
${KU_W_HI_expiresTag2} =  xpath=(//div[contains(text(),'Expires on')])[2]
${KU_W_HI_expiresTag3} =  xpath=(//div[contains(text(),'Expires on')])[3]
${KU_W_HI_policyDocLink1} =  xpath=(//div[@class='b-health-protect-row__documents']//img)[1]
${KU_W_HI_policyDocLink2} =  xpath=(//div[@class='b-health-protect-row__documents']//img)[2]
${KU_W_HI_policyDocLink3} =  xpath=(//div[@class='b-health-protect-row__documents']//img)[3]
${KU_W_HI_policyList} =  xpath=//div[@class='b-policy-documents__row__policy-document-name']
${KU_W_HI_bannerImg} =  xpath=//img[@alt='insurance-health-banner-img']
${KU_W_HI_footer} =  xpath=//div[@class='b-header-image-img']
${KU_W_HI_bannerDesc} =  xpath=//div[@class='b-health-protect-banner__content']
${KU_W_HI_FBLink} =  xpath=//div[@class='b-app-standard-social-options-container']//a[1]
${KU_W_HI_twitterLink} =  xpath=//div[@class='b-app-standard-social-options-container']//a[2]
${KU_W_HI_whatsappLink} =  xpath=//div[@class='b-app-standard-social-options-container']//a[3]
${KU_W_HI_telegramLink} =  xpath=//div[@class='b-app-standard-social-options-container']//a[4]
${KU_W_HI_mailLink} =  xpath=//div[@class='b-app-standard-social-options-container']//a[5]
${KU_W_HI_spreadTheWord} =  xpath=//div[@class='b-health-protect-banner__save-premium']