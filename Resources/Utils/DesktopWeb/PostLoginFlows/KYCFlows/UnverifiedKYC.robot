*** Keywords ***

Verify Unverifed KYC Navigation
    Log To Console  Unverifed KYC
    Wait For Element Visibility  ${KU_W_KYC_startBtn}
    Wait And Click  ${KU_W_KYC_startBtn}
    Enter PAN Details  ${e_KYC_invalidPANNumber}  ${e_KYC_mobileNumField}  ${e_KYC_dateField}  ${e_KYC_monthField}  ${e_KYC_yearField}
    Wait For Element Visibility  ${KU_W_KYC_KYCNotCertifiedTitle} 
    Sleep  2s
    Verify Element And Text  ${KU_W_KYC_KYCNotCertifiedTitle}  ${e_KYC_KYCNotVerified}
    Wait For Element Visibility  ${KU_W_KYC_KYCNotCertifiedSubTitle}
    Sleep  2s
    Verify Element And Text  ${KU_W_KYC_KYCNotCertifiedSubTitle}  ${e_KYC_KYCNotVerifiedDesc}
    Wait And Click  ${KU_W_postlogin_playStoreBtn} 
    Switch To Window Verify Title And Close  ${e_postlogin_googlePlayStore}
    Wait And Click  ${KU_W_postlogin_appStoreBtn}
    Sleep  2s
    Switch To App Store And Verify Screen Icons

Switch To App Store And Verify Screen Icons
    Switch Window  locator=NEW
    Wait For Element Visibility  ${KU_W_postlogin_appStoreScreen}
    Verify Element And Text  ${KU_W_postlogin_appStoreScreen}  ${e_postlogin_appStoreScreen}
    Wait For Element Visibility  ${KU_W_postlogin_kuveraAppTitle}
    Verify Page Contains Element  ${KU_W_postlogin_kuveraAppTitle}
    Close Window
    Sleep  2s
    Switch Window  browser=Kuvera