*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Login And Verify Policy Details
    Go To  ${URL_stage3}
    Logout From App Post Signup
    Login 
    Verify Policy Details

Login 
    Log To Console  Login 
    Wait And Click  ${KU_W_emailTxt}  
    Input Text      ${KU_W_emailTxt}  ${emailID}
    Wait And Click  ${KU_W_passwordTxt}
    Input Text      ${KU_W_passwordTxt}  ${e_ca_pwd}
    Wait And Click  ${KU_W_ca_loginBtn}

Verify Policy Details
    Log To Console  Policy Details
    Wait And Click  ${KU_W_insureLink}
    FOR  ${i}  IN RANGE  1   6
        ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_HI_totalCoverDesc}
        Run Keyword If  ${isElementVisible}  Exit For Loop
        ...    ELSE  Reload After Every One Min   
    END
    Wait For Element Visibility  ${KU_W_HI_coverTitle}
    Verify Element And Text  ${KU_W_HI_coverTitle}  ${e_HI_coverTitle}
    Verify Element And Text  ${KU_W_HI_totalCoverDesc}  ${e_HI_totalCoverDesc}
    Verify Element And Text  ${KU_W_HI_totalPremiumDesc}  ${e_HI_totalPremiumDesc}
    Verify Element And Text  ${KU_W_HI_coverageRowTitle}  ${e_HI_coverageRowTitle}
    Scroll Untill View  ${KU_W_HI_policyDetails1}
    Verify Element And Text  ${KU_W_HI_policyDetails1}  ${e_HI_policyDetails1}
    Verify Page Contains Element  ${KU_W_HI_expiryDateForPolicy1}  
    Click Image  ${KU_W_HI_policyDocLink1}
    Policy Document List Validation  ${e_HI_healthAssurePolicyList}
    Scroll Untill View  ${KU_W_HI_policyDetails2}
    Verify Element And Text  ${KU_W_HI_policyDetails2}  ${e_HI_policyDetails2}
    Verify Page Contains Element  ${KU_W_HI_expiryDateForPolicy2}  
    Click Image  ${KU_W_HI_policyDocLink2}
    Policy Document List Validation  ${e_HI_healthAssurePolicyList}
    Scroll Untill View  ${KU_W_HI_policyDetails3}
    Verify Element And Text  ${KU_W_HI_policyDetails3}  ${e_HI_policyDetails3}
    Verify Page Contains Element  ${KU_W_HI_expiryDateForPolicy3}  
    Click Image  ${KU_W_HI_policyDocLink3}
    Policy Document List Validation  ${e_HI_dailyAllowanceList}
    Verify Banner Details

Policy Document List Validation
    [Arguments]  ${expectedPolicyList}
    Scroll Element Into View  ${KU_W_HI_policyList} 
    @{healthAssure_list} =  Get WebElements  ${KU_W_HI_policyList}
    Compare Lists  ${healthAssure_list}  ${expectedPolicyList}
    Click Image  ${KU_W_HI_documentLinkCloseBtn}

Verify Banner Details
    Wait For Element Visibility  ${KU_W_HI_bannerImg}
    Scroll Untill View  ${KU_W_HI_bannerImg}
    Sleep  2s
    Verify Page Contains Image  ${KU_W_HI_bannerImg}
    Verify Element And Text  ${KU_W_HI_bannerDesc}  ${e_HI_bannerDesc}
    Verify Element And Text  ${KU_W_HI_spreadTheWord}  ${e_HI_spreadTheWord}
    Verify Social Sharing Option  ${KU_W_HI_FBLink}  ${KU_W_HI_twitterLink}  ${KU_W_HI_whatsappLink}  ${KU_W_HI_telegramLink}  ${KU_W_HI_mailLink}

Reload After Every One Min
    Sleep  60s
    Reload Page  