*** Keywords ***

Login And Verify Policy Details
    Go To  ${URL_stage3}
    Logout From App Post Signup
    Login  ${emailID}  ${e_ca_pwd}
    Verify Policy Details

Verify Policy Details
    Log To Console  Policy Details
    Sleep  6s
    Wait And Click  ${KU_W_insureLink}
    FOR  ${i}  IN RANGE  1   6
        ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_HI_totalCoverDesc}
        Run Keyword If  ${isElementVisible}  Exit For Loop
        ...    ELSE  Reload After Every One Min   
    END
    Wait For Element Visibility  ${KU_W_HI_coverTitle}
    Verify Element And Text  ${KU_W_HI_coverTitle}  ${e_HI_coverTitle}
    Scroll Untill View  ${KU_W_HI_policyName1}
    Verify Page Contains Element  ${KU_W_HI_healthProtectTag1}
    Verify Page Contains Element  ${KU_W_HI_policyName1}
    Verify Page Contains Element  ${KU_W_HI_cover1}
    Verify Page Contains Element  ${KU_W_HI_cover1Val} 
    Verify Page Contains Element  ${KU_W_HI_premium1}
    Verify Page Contains Element  ${KU_W_HI_premium1Val}
    Verify Page Contains Element  ${KU_W_HI_expiresTag1}
    Wait And Click  ${KU_W_HI_policyDocLink1}
    Policy Document List Validation  ${e_HI_healthAssurePolicyList}
    Scroll Untill View  ${KU_W_HI_policyName2}
    Verify Page Contains Element  ${KU_W_HI_healthProtectTag2}
    Verify Page Contains Element  ${KU_W_HI_policyName2}
    Verify Page Contains Element  ${KU_W_HI_cover2}
    Verify Page Contains Element  ${KU_W_HI_cover2Val} 
    Verify Page Contains Element  ${KU_W_HI_premium2}
    Verify Page Contains Element  ${KU_W_HI_premium2Val}
    Verify Page Contains Element  ${KU_W_HI_expiresTag2}
    Wait And Click  ${KU_W_HI_policyDocLink2}
    Policy Document List Validation  ${e_HI_healthAssurePolicyList}
    Scroll Untill View  ${KU_W_HI_policyName3}
    Verify Page Contains Element  ${KU_W_HI_healthProtectTag3}
    Verify Page Contains Element  ${KU_W_HI_policyName3}
    Verify Page Contains Element  ${KU_W_HI_cover3}
    Verify Page Contains Element  ${KU_W_HI_cover3Val} 
    Verify Page Contains Element  ${KU_W_HI_premium3}
    Verify Page Contains Element  ${KU_W_HI_premium3Val}
    Verify Page Contains Element  ${KU_W_HI_expiresTag3}
    Wait And Click  ${KU_W_HI_policyDocLink3}
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