*** Keywords ***

Verify PostLogin Reports Menu Navigation Without KYC 
    Log To Console  Reports Navigation Without KYC
    Wait And Click  ${KU_W_postlogin_reportsTab}
    # ELSS before KYC
    Wait And Click  ${KU_W_reports_ELSSReportTab}
    Verify Registration Page Postlogin  ${e_report_KYCMsg}  ${KU_W_reports_registrationBtn}
    # Capital Gains before KYC
    Wait And Click  ${KU_W_reports_capitalGainsTab}
    Verify Registration Page Postlogin  ${e_report_KYCMsg}  ${KU_W_reports_registrationBtn}
    # Transactions before KYC
    Wait And Click  ${KU_W_reports_transactionsTab}
    Wait For Element Visibility  ${KU_W_reports_noRecord}
    Verify Element And Text  ${KU_W_reports_noRecord}  ${e_report_noRecordFound}
    
Verify PostLogin Reports Menu Navigation With KYC 
    Log To Console  Reports Navigation With KYC
    Wait And Click  ${KU_W_postlogin_reportsTab}
    # Fill In KYC
    Sleep  2s
    Wait And Click  ${KU_W_reports_ELSSReportTab}
    Wait And Click  ${KU_W_reports_registrationBtn}
    KYC Form Details Page  ${e_KYC_PANNumber}  ${e_KYC_mobileNumField}
    Confirm Account Details Page
    Link Bank Account
    Wait And Click  ${KU_W_postlogin_reportsTab}
    # Transactions after KYC
    Wait For Element Visibility  ${KU_W_reports_noRecord}
    Verify Element And Text  ${KU_W_reports_noRecord}  ${e_report_noRecordFound}
    # ELSS after KYC
    Wait And Click  ${KU_W_reports_ELSSReportTab}
    Wait For Element Visibility  ${KU_W_reports_taxReports}
    Verify Page Contains Element  ${KU_W_reports_taxReports}
    # Captital Gains after KYC
    Wait And Click  ${KU_W_reports_capitalGainsTab}
    Verify Element And Text  ${KU_W_reports_importMF}  ${e_report_importMF}
    Verify Page Contains Element  ${KU_W_reports_taxStatement} 