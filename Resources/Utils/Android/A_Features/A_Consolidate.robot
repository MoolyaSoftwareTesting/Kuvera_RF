*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Consolidate Page
    Log To Console  Consolidate
    Navigate To Hamburger Menu  ${KU_A_featureLink}  ${e_featureLink}
    Wait And Click Element On Android  ${KU_A_feature_CD_link}
    Verify Text On Page  ${e_feature_CD_screenTitle}
    Verify Signup Link And Kuvera Logo
    Verify Text On Page  ${e_feature_CD_screenSubTitle}
    Verify Page Contains Element On Android  ${KU_A_feature_CD_imgIcon}
    Verify Set A Goal Section
    Verify Save Tax Section


Verify Set A Goal Section
    Verify Text On Page  ${e_feature_CD_dreamsComeTrue} 
    Verify Text On Page  ${e_feature_CD_makeYourGoalsReality}  
    Verify Text On Page  ${e_feature_CD_makeYourGoalsDesc} 
    Verify Page Contains Element On Android  ${KU_A_feature_CD_goalBasedInvestinglink}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_feature_CD_goalBasedInvestinglink}
    Verify Text On Page  ${e_feature_CD_goalBasedLinkTitle}
    Go Back
    Verify Page Contains Element On Android  ${KU_A_feature_CD_setAGoal}
    Wait And Click Element On Android  ${KU_A_feature_CD_setAGoal}
    Verify Text On Page  ${e_feature_SG_screenTitle}
    Go Back

Verify Save Tax Section
    Swipe By Percent  85  85  30  30  9000
    Verify Page Contains Element On Android  ${KU_A_feature_CD_saveTaxImg}
    Verify Text On Page  ${e_feature_CD_taxSaverOptions} 
    Verify Text On Page  ${e_feature_CD_saveOnTax}
    Verify Text On Page  ${e_feature_CD_saveOnTaxDesc}
    Verify Page Contains Element On Android  ${KU_A_feature_CD_whyELSSLink} 
    Sleep  1s
    # Currently Kept Pending as with the xpath for ELSS link , we are unable to click on the link
    # Wait And Click Element On Android  ${KU_A_feature_CD_whyELSSLink}
    # Verify Text On Page  ${e_feature_CD_whyELSSLinkTitle}
    # Go Back
    Verify Page Contains Element On Android  ${KU_A_feature_CD_saveTaxBtn}
    Wait And Click Element On Android  ${KU_A_feature_CD_saveTaxBtn}
    Verify Text On Page  ${e_feature_SG_Q_username}
    Go Back    