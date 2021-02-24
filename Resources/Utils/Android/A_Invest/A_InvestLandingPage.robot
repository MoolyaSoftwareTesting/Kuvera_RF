*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Invest Tiles
    Log To Console  Invest Tiles
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Verify Text On Page  ${e_invest_lowRisk}
    Verify Text On Page  ${e_invest_highRisk}
    Verify Signup Link And Kuvera Logo
    # SaveSmart
    Verify Page Contains Element On Android  ${KU_A_invest_saveSmartImg}
    Verify Page Contains Element On Android  ${KU_A_invest_SS_title}
    Verify Text On Page  ${e_invest_SS_subTitle}
    Log To Console  SaveSmart
    Wait And Click Element On Android  ${KU_A_invest_SS_title}
    Verify Title And SubTitle Of SaveSmart
    Go Back
    # Gilt Funds
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Verify Page Contains Element On Android  ${KU_A_invest_GF_title}
    Verify Page Contains Element On Android  ${KU_A_invest_GF_subTitle}
    Verify Android PreLogin Gilt Funds Page






Verify Title And SubTitle Of SaveSmart
    Verify Page Contains Element On Android  ${KU_A_SS_screenTitle}
    Verify Page Contains Element On Android  ${KU_A_invest_SS_screenSubTitle}

Verify Presence Of Search Box WatchList Growth Button 
    Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    Verify Page Contains Element On Android  ${KU_A_invest_searchBox}
    Verify Text On Page  ${e_invest_growth}
    Verify Text On Page  ${e_invest_dividend}
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}

Verify Sort And Filter Button
    Verify Page Contains Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    Wait And Click Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_checkmark}
    Verify Text On Page  ${e_invest_3Y}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_invest_sortBtn}
    Wait And Click Element On Android  ${KU_A_invest_filterBtn}
    Verify Text On Page  ${e_invest_GF_filteredFund}
    Wait And Click Element On Android  ${KU_A_invest_doneBtn}

Verify Import Tag
    Verify Text On Page  ${e_invest_importTagTitle}
    Verify Page Contains Element On Android  ${KU_A_invest_importNowBtn}
    Wait And Click Element On Android  ${KU_A_invest_importNowBtn}
    Verify Login Page And Go Back 

Verify Navigation To Tabs For Funds
    # WatchList
    Wait And Click Element On Android  ${KU_A_watchListBtn}
    Verify Text On Page  ${e_invest_watchlistTitle}
    Wait And Click Element On Android  ${KU_A_invest_loginBtn}
    Verify Login Page And Go Back 
    Wait And Click Element On Android  ${KU_A_signupLink}
    Verify Signup Page On Android App
    Go Back
    # All Funds
    Wait And Click Element On Android  ${KU_A_invest_allFundsMenu}
    Verify Import Tag
    # InstaRedeem
    Wait And Click Element On Android  ${KU_A_invest_instaRedeemMenu}
    Verify Text On Page  ${e_invest_instaRedeemFilter}
    # Save Taxes
    Wait And Click Element On Android  ${KU_A_invest_saveTaxes} 
    Verify Text On Page  ${e_invest_saveTaxFilter}
    Swipe By Percent  45  15  20  15  15000
    # Top Rated
    Wait And Click Element On Android  ${KU_A_invest_topRated}
    Verify Text On Page  ${e_invest_topRated_investorChoiceFilter}
    # Investor Choice
    Swipe By Percent  45  15  20  15  15000
    Wait And Click Element On Android  ${KU_A_invest_investorChoice}
    Verify Text On Page  ${e_invest_topRated_investorChoiceFilter}
    # New Funds
    Swipe By Percent  45  15  20  15  15000
    Wait And Click Element On Android  ${KU_A_invest_newFunds} 
    Verify Text On Page  ${e_invest_newFunds_openEnded}
    Verify Text On Page  ${e_invest_newFunds_closeEnded}
    # Top Searched
    Swipe By Percent  45  15  20  15  15000
    Wait And Click Element On Android  ${KU_A_invest_topSearched} 
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    


