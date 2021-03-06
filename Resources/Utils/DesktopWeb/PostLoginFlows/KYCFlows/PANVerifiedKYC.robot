*** Keywords ***

Verify PAN Verifed KYC Details
    Wait For Element Visibility  ${KU_W_KYC_startBtn}
    Click Element  ${KU_W_KYC_startBtn}
    KYC Form Details Page  ${e_KYC_PANNumber}  ${e_KYC_mobileNumField}  ${e_KYC_dateField}  ${e_KYC_monthField}  ${e_KYC_yearField}
    Confirm Account Details Page
    Link Bank Account  ${e_KYC_bankCertifyText}

Confirm Account Details Page
    # Tell Us About Yourself
    Verify Page Contains Element  ${KU_W_KYC_tellUsAboutYourself}
    Verify Page Contains Element  ${KU_W_KYC_tellUsAboutYourselfDesc}
    Wait Scroll And Click Element  ${KU_W_postlogin_continue} 

Link Bank Account
    [Arguments]  ${bankCertifyText}
    Log To Console  Link Bank Account
    # Bank Account Details
    Verify Page Contains Element  ${KU_W_KYC_linkBankAccTitle}
    Verify Element And Text  ${KU_W_KYC_pageSubTitle}  ${e_KYC_linkBankAccDesc}
    Verify Page Contains Element  ${KU_W_KYC_accTypeLabel}
    Verify Element And Text  ${KU_W_KYC_IFSCLabel}  ${e_KYC_IFSCLabel}
    Wait And Click  ${KU_W_KYC_IFSCField}
    Input Text  ${KU_W_KYC_IFSCField}  ${e_KYC_IFSc} 
    Verify Element And Text  ${KU_W_KYC_bankAccLabel}  ${e_KYC_bankAccLabel}
    Wait And Click  ${KU_W_KYC_bankAccField}
    Input Text  ${KU_W_KYC_bankAccField}  ${e_KYC_bankAccField}
    Verify Element And Text  ${KU_W_KYC_reBankAccLabel}  ${e_KYC_reBankAccLabel}
    Wait And Click  ${KU_W_KYC_reBankAccField} 
    Input Text  ${KU_W_KYC_reBankAccField}  ${e_KYC_bankAccField}
    Verify Element And Text  ${KU_W_KYC_bankCertifyText}  ${bankCertifyText} 
    Wait And Click  ${KU_W_KYC_bankCertifyCheckBox} 
    Verify Element And Text  ${KU_W_KYC_bankConfirmedText}  ${e_KYC_bankConfirmedText}
    Wait And Click  ${KU_W_KYC_bankConfirmedCheckBox}
    Verify Element And Text  ${KU_W_KYC_addNomineeLabel}  ${e_KYC_addANomineeLabel}
    Verify Page Contains Element  ${KU_W_KYC_addNomineeText}
    # Add Nominee
    Scroll Page To Location  0   300
    ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_KYC_nomineeName}
    IF   ${isElementVisible}  
        Log To Console  Continue
    ELSE   
        Wait And Click  ${KU_W_KYC_addNomineeCheckBox}
    END
    Add Nominee Details
    Wait And Click  ${KU_W_postlogin_continue}
    Verify Element And Text  ${KU_W_KYC_confirmationTitle}  ${e_KYC_accountSetupTitle} 
    Verify Element And Text  ${KU_W_KYC_confirmationSubTitle}  ${e_KYC_accountSetupSubTitle}
    Sleep  3s
    Wait And Click  ${KU_W_postlogin_OkBtn}
    Sleep  1s
    Verify Page Contains Element  ${KU_W_postlogin_homeTab}
    Sleep  2s
    Verify Page Do Not Contain Element  ${KU_W_KYC_startBtn} 