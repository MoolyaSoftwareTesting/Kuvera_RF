*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Remit Page
    Log To Console  Remit
    Log To Console  Title And Image Validation
    Navigate To Hamburger Menu  ${KU_A_remitLink}  ${e_remitLink}
    Wait And Verify Element And Text On Android  ${KU_A_remitTitle}  ${e_remitTitle} 
    Wait And Verify Element And Text On Android  ${KU_A_remitSubTitle}  ${e_remitSubTitle}
    Verify Page Contains Element On Android  ${KU_A_remit_imgIcon}
    Verify Page Contains Element On Android  ${KU_A_remit_kuveraLogoImg}
    Verify Page Contains Element On Android  ${KU_A_remit_transferwiseImg}
    Wait And Click Element On Android  ${KU_A_remit_transferNowBtn}
    Verify Next Steps Details Page
    Wait And Verify Element And Text On Android  ${KU_A_remit_transferwiseScreenTitle}  ${e_remit_tansferwiseScreenTitle}
    Go Back
    Sleep  2s
    Swipe By Percent  90  90  50  50  900
    Swipe By Percent  30  30  10  10  900
    Wait And Click Element On Android  ${KU_A_remit_sendMoneyBtn}
    Verify Setting Of Chrome Browser 
    Sleep  5s
    Go Back
    Verify Why TransferWise 
    Sleep  2s
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn}
    Swipe By Percent  30  30  85  85  5000
    Swipe By Percent  30  30  85  85  5000

Verify Next Steps Details Page
    Log To Console  Title And Text Validation
    Verify Page Contains Element On Android  ${KU_A_remit_nextStepsTitle}
    Verify Page Contains Element On Android  ${KU_A_remit_nextStepsSubTitle}
    Verify Page Contains Element On Android  ${KU_A_remit_step1} 
    Verify Page Contains Element On Android  ${KU_A_remit_step1Desc} 
    Verify Page Contains Element On Android  ${KU_A_remit_step2}
    Verify Page Contains Element On Android  ${KU_A_remit_step2Desc}
    Verify Page Contains Element On Android  ${KU_A_remit_step3}
    Verify Page Contains Element On Android  ${KU_A_remit_step3Desc}
    Verify Page Contains Element On Android  ${KU_A_remit_step4}
    Verify Page Contains Element On Android  ${KU_A_remit_step4Desc}
    Sleep  2s
    Wait And Click Element On Android  ${KU_A_remit_conitnueBtn}

Verify Why TransferWise
    Sleep  2s
    Swipe By Percent  50  50  35  35  9000
    Log To Console  Title Text And Image Validation
    Wait And Verify Element And Text On Android  ${KU_A_remit_whyTransferWise}  ${e_remit_whyTransferWise}
    Wait And Verify Element And Text On Android  ${KU_A_remit_whyTransferWisePoint1}  ${e_remit_transferWisePoint1}
    Wait And Verify Element And Text On Android  ${KU_A_remit_whyTransferWisePoint2}  ${e_remit_transferWisePoint2}
    Wait And Verify Element And Text On Android  ${KU_A_remit_whyTransferWisePoint3}  ${e_remit_transferWisePoint3}
    Verify Page Contains Element On Android  ${KU_A_remit_noHiddenFeesImg}
    Verify Page Contains Element On Android  ${KU_A_remit_8TimesCheaperImg} 
    Verify Page Contains Element On Android  ${KU_A_remit_trustedCustomersImg}
    

Verify Setting Of Chrome Browser 
    ${isElementVisible} =  Run Keyword And Return Status  Verify Open With Label
    Run Keyword If   ${isElementVisible}  Choose Chrome Browser
    ...    ELSE  Log To Console  Continue

Choose Chrome Browser
    Wait And Click Element On Android  ${KU_A_remit_chromeOption}
    Wait And Click Element On Android  ${KU_A_remit_alwaysBtn}

Verify Open With Label
    Wait For Element Visibility On Android  ${KU_A_remit_openWithLabel}
    Element Should Be Visible  ${KU_A_remit_openWithLabel}