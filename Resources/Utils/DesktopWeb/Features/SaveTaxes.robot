*** Keywords ***

Verify PreLogin Save Taxes Page
    Wait For Element Visibility  ${KU_W_feature_saveTaxesLink}
    Click Element  ${KU_W_feature_saveTaxesLink}
    Verify Login And Signup On Prelogin
    Wait For Element Visibility  ${KU_W_feature_st_screenTitle}  
    Verify Element And Text  ${KU_W_feature_st_screenTitle}  ${e_feature_st_screenTitleText}
    Verify Element And Text  ${KU_W_feature_st_screenContent}  ${e_feature_st_screenContentText}

    # Save Tax 
    Scroll Untill View  ${KU_W_feature_saveTaxesHeading}
    Verify Element And Text  ${KU_W_feature_saveTaxesHeading}  ${e_feature_st_taxHeadingText}
    Verify Element And Text  ${KU_W_feature_saveTaxesDesc}  ${e_feature_st_taxDescText}

    # Save Commissions 
    Scroll Untill View    ${KU_W_feature_saveCommissionHeading}
    Verify Element And Text  ${KU_W_feature_saveCommissionHeading}  ${e_feature_st_commissionHeadingText} 
    Verify Element And Text  ${KU_W_feature_saveCommissionDesc}  ${e_feature_st_commissionDescText} 

    # Mutual Fund
    Sleep  2s
    Reload Page
    Verify Login Page On Pre And Postlogin  ${KU_W_watchlistIcon}  ${KU_W_postlogin_feature_watchlistHeader}
  
    # Save Fees
    Scroll Untill View  ${KU_W_feature_saveFeesHeading}
    Verify Element And Text  ${KU_W_feature_saveFeesHeading}  ${e_feature_st_feesHeadingText}
    Verify Element And Text  ${KU_W_feature_saveFeesDesc}  ${e_feature_st_feesDescText}

    # Save Tax Funding
    Scroll Untill View  ${KU_W_feature_st_fundingTitle} 
    Verify Element And Text  ${KU_W_feature_st_fundingTitle}  ${e_feature_st_fundingTitleText}
    Verify Element And Text  ${KU_W_feature_st_fundingDesc}  ${e_feature_st_fundingDescText}
    Verify Page Contains Link  ${KU_W_feature_st_learnHowLink}  ${e_feature_st_learnHowLinkText}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_feature_st_learnHowLink}
    Click Element  ${KU_W_feature_st_learnHowLink}
    Switch To Window Verify Title And Close   ${e_feature_st_pageTitleText}
    Reload Page
    Wait For Element Visibility  ${KU_W_feature_st_investmentTitle}
    
    # Table Content
    Scroll Untill View  ${KU_W_feature_st_investmentTitle} 
    Verify Element And Text  ${KU_W_feature_st_investmentTitle}  ${e_feature_st_investmentText}
    Verify Element And Text  ${KU_W_feature_st_lockInTitle}  ${e_feature_st_lockInText} 
    Verify Element And Text  ${KU_W_feature_st_historicalReturnsTitle}  ${e_feature_st_historicalReturnsText} 
    Scroll Untill View  ${KU_W_feature_st_tableRow1}   
    Verify Element And Text  ${KU_W_feature_st_tableRow1}  ${e_feature_st_tableRow1Text} 
    Verify Element And Text  ${KU_W_feature_st_tableRow2}  ${e_feature_st_tableRow2Text}
    Verify Element And Text  ${KU_W_feature_st_tableRow3}  ${e_feature_st_tableRow3Text}
    Scroll Untill View  ${KU_W_feature_st_tableRow4}
    Verify Element And Text  ${KU_W_feature_st_tableRow4}  ${e_feature_st_tableRow4Text}
    Verify Element And Text  ${KU_W_feature_st_tableRow5}  ${e_feature_st_tableRow5Text}