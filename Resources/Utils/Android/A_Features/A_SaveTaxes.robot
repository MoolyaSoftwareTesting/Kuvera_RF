*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Save Taxes Page
    Log To Console  Save Taxes
    Navigate To Hamburger Menu  ${KU_A_featureLink}  ${e_featureLink}
    Wait And Click Element On Android  ${KU_A_feature_ST_link}
    Verify Text On Page  ${e_feature_ST_screenTitle}
    Verify Signup Link And Kuvera Logo
    Verify Page Contains Element On Android  ${KU_A_feature_ST_imgIcon}
    Verify Text On Page  ${e_feature_ST_saveTaxDesc}
    Verify Text On Page  ${e_feature_ST_saveCommissionsTitle}
    Verify Text On Page  ${e_feature_ST_saveCommissionsDesc}
    Verify Text On Page  ${e_feature_ST_saveFeesTitle}
    Verify Text On Page  ${e_feature_ST_saveFeesDesc}
    Verify Details Of Top Rated Tax
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn}
    Verify Tax Saving Funds Description
    Swipe By Percent  30  30  85  85  5000
    Swipe By Percent  30  30  85  85  5000
    
Verify Tax Saving Funds Description
    Swipe By Percent  70  70  20  20  5000
    Verify Text On Page  ${e_feature_ST_taxSavingFundsTitle}
    Verify Text On Page  ${e_feature_ST_taxSavingFundsDesc} 
    Wait And Click Element On Android  ${KU_A_feature_ST_learnHowLink}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_feature_ST_learnHowLinkDesc}
    Go Back
    Sleep  1s
    
Verify Details Of Top Rated Tax
    Swipe By Percent  70  70  20  20  5000
    Verify Text On Page  ${e_feature_ST_topRatedTax}
    Verify Text On Page  ${e_feature_ST_topRatedTaxDesc}
    Verify Text On Page  ${e_feature_ST_categoryTitle}
    Verify Text On Page  ${e_MF_navLabel}
    Verify Text On Page  ${e_MF_1YLabel}
    Verify Text On Page  ${e_MF_3YLabel}
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    Wait And Click Element On Android  ${KU_A_watchListBtn}
    Verify Login Page And Go Back  