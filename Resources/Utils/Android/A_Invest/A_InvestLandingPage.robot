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
    # Verify Page Contains Element On Android  ${KU_A_invest_saveSmartImg}
    # Verify Page Contains Element On Android  ${KU_A_invest_SS_tilesTitle}
    # Verify Text On Page  ${e_invest_SS_subTitle}
    # Log To Console  SaveSmart
    # Wait And Click Element On Android  ${KU_A_invest_SS_tilesTitle}
    # Verify Title And SubTitle Of SaveSmart
    # Go Back
    # FD
    Verify Page Contains Element On Android  ${KU_A_invest_FD_tilesTitle}
    Verify Page Contains Element On Android  ${KU_A_invest_FD_subTitle}
    Log To Console  FD 
    Wait And Click Element On Android  ${KU_A_invest_FD_tilesTitle}
    Verify Text On Page  ${e_invest_FD_allFDMenu}
    Go Back
    # Bank PSU Bonds
    # Verify Page Contains Element On Android  ${KU_A_invest_BankPSU_tilesTitle}
    # Verify Android PreLogin Bank & PSU Bonds Page
    # Go Back
    # Digi Gold
    Verify Page Contains Element On Android  ${KU_A_invest_digiGold_imgIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_digiGold_tilesTitle}
    Verify Page Contains Element On Android  ${KU_A_invest_digiGold_subTitle}
    Log To Console  Digi Gold
    Wait And Click Element On Android  ${KU_A_invest_digiGold_tilesTitle}
    Verify Text On Page  ${e_gold_screenTitle}
    Go Back
    # Ultra-Short
    # Verify Page Contains Element On Android  ${KU_A_invest_US_tilesTitle}
    # Verify Text On Page  ${e_invest_US_subTitle}
    # Verify Android PreLogin Ultra Short Page
    # Go Back
    # # Gilt Funds
    # Wait And Click Element On Android  ${KU_A_invest_seekBar}
    # Verify Page Contains Element On Android  ${KU_A_invest_GF_title}
    # Verify Page Contains Element On Android  ${KU_A_invest_GF_subTitle}
    # Verify Android PreLogin Gilt Funds Page
    # Go Back
    # # ELSS Tax Saver
    # Wait And Click Element On Android  ${KU_A_invest_seekBar}
    # Verify Page Contains Element On Android  ${KU_A_invest_ELSS_tilesTitle}
    # Verify Text On Page  ${e_invest_ELSS_subTitle} 
    # Verify Android PreLogin ELSS Tax Saver Page
    # Go Back
    # # US ETF
    # Wait And Click Element On Android  ${KU_A_invest_seekBar}
    # Verify Page Contains Element On Android  ${KU_A_invest_ETF_tilesTitle}
    # Verify Page Contains Element On Android  ${KU_A_invest_ETF_imgIcon} 
    # Verify Text On Page  ${e_invest_ETF_subTitle} 
    # Verify Android PreLogin US ETF Page
    # Go Back
    # # Equity Index
    # Wait And Click Element On Android  ${KU_A_invest_seekBar}
    # Verify Page Contains Element On Android  ${KU_A_invest_EI_tilesTitle} 
    # Verify Text On Page  ${e_invest_EI_subTitle}
    # Verify Android PreLogin Equity Index Page
    # Go Back
    # # Sector Funds
    # Wait And Click Element On Android  ${KU_A_invest_seekBar}
    # Swipe By Percent  45  15  70  15  15000
    # Verify Page Contains Element On Android  ${KU_A_invest_SF_tilesTitle} 
    # Verify Page Contains Element On Android  ${KU_A_invest_SF_subTitle}
    # Verify Android PreLogin Sector Funds Page
    # Go Back
    # # Value Funds
    # Wait And Click Element On Android  ${KU_A_invest_seekBar}
    # Swipe By Percent  45  15  70  15  15000
    # Verify Page Contains Element On Android  ${KU_A_invest_VF_tilesTitle} 
    # Verify Page Contains Element On Android  ${KU_A_invest_VF_subTitle}
    # Verify Android PreLogin Value Funds Page
    # Go Back
    # Crypto
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Swipe By Percent  45  15  70  15  15000
    Verify Page Contains Element On Android  ${KU_A_invest_crypto_title} 
    Verify Page Contains Element On Android  ${KU_A_invest_crypto_subTitle} 
    Log To Console  Crypto
    Wait And Click Element On Android  ${KU_A_invest_crypto_title}
    Verify Text On Page  ${e_invest_crypto_allCryptoMenu}
    Go Back
    # 52Wk High India
    # Wait And Click Element On Android  ${KU_A_invest_seekBar}
    # Swipe By Percent  45  15  70  15  15000
    # Verify Page Contains Element On Android  ${KU_A_invest_52WkIndia_tilesTitle} 
    # Verify Page Contains Element On Android  ${KU_A_invest_52WkIndia_subTitle}
    # Verify Android PreLogin 52Wk High India Page
    # Go Back
    # # 52Wk High US
    # Wait And Click Element On Android  ${KU_A_invest_seekBar}
    # Swipe By Percent  45  15  70  15  15000
    # Verify Page Contains Element On Android  ${KU_A_invest_52WkUS_tilesTitle} 
    # Verify Page Contains Element On Android  ${KU_A_invest_52WkUS_subTitle}
    # Verify Android PreLogin 52Wk High US Page
    # Go Back


Verify Title And SubTitle Of SaveSmart
    Verify Page Contains Element On Android  ${KU_A_SS_screenTitle}
    Verify Page Contains Element On Android  ${KU_A_invest_SS_screenSubTitle}

Verify Presence Of Search Box WatchList Growth Button 
    Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    Verify Page Contains Element On Android  ${KU_A_inputField}
    Verify Text On Page  ${e_invest_growth}
    Verify Text On Page  ${e_invest_dividend}
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    Wait And Click Element On Android  ${KU_A_watchListBtn}

Verify Search Box Sort And Watchlist Button For ELSS And Stocks
    [Arguments]  ${sortYear}
    Verify Page Contains Element On Android  ${KU_A_invest_sortBtn}
    Wait And Click Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_checkmark}
    Verify Text On Page  ${sortYear}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_inputField}
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    Wait And Click Element On Android  ${KU_A_watchListBtn}

Verify Sort And Filter Button
    [Arguments]  ${filteredFund}
    Verify Page Contains Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    Wait And Click Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_checkmark}
    Verify Text On Page  ${e_invest_3Y}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_invest_sortBtn}
    Wait And Click Element On Android  ${KU_A_invest_filterBtn}
    Verify Text On Page  ${filteredFund}
    Wait And Click Element On Android  ${KU_A_invest_doneBtn}

Verify Import Tag
    [Arguments]  ${importTitle}
    Verify Page Contains Element On Android  ${importTitle}
    Verify Page Contains Element On Android  ${KU_A_invest_importNowBtn}
    Wait And Click Element On Android  ${KU_A_invest_importNowBtn}
    Verify Login Page And Go Back 

Verify Watchlist Menu Details
    [Arguments]  ${watchlistTitle}
    Wait For Element Visibility On Android  ${watchlistTitle}
    Verify Page Contains Element On Android  ${watchlistTitle}
    Wait And Click Element On Android  ${KU_A_invest_loginBtn}
    Verify Login Page And Go Back 
    Wait And Click Element On Android  ${KU_A_signupLink}
    Verify Signup Page On Android App
    Go Back

Verify Navigation To Tabs For Funds
    # WatchList
    Verify Watchlist Menu Details  ${KU_A_invest_funds_watchlistTitle}
    # All Funds
    Wait And Click Element On Android  ${KU_A_invest_allFundsMenu}
    Verify Import Tag  ${KU_A_invest_funds_importTagTitle}
    # InstaRedeem
    Wait And Click Element On Android  ${KU_A_invest_instaRedeemMenu}
    Verify Text On Page  ${e_invest_instaRedeemFilter}
    # Save Taxes
    Wait And Click Element On Android  ${KU_A_invest_saveTaxes} 
    Verify Text On Page  ${e_invest_saveTaxFilter}
    Swipe By Percent  45  15  20  15  15000
    # Top Rated
    Wait And Click Element On Android  ${KU_A_invest_topRated}
    Verify Text On Page  ${e_invest_ELSS_topRated_investorChoiceFilter}
    # Investor Choice
    Swipe By Percent  45  15  20  15  15000
    Wait And Click Element On Android  ${KU_A_invest_investorChoice}
    Verify Text On Page  ${e_invest_ELSS_topRated_investorChoiceFilter}
    # New Funds
    Swipe By Percent  45  15  20  15  15000
    Wait And Click Element On Android  ${KU_A_invest_newFunds} 
    Verify Text On Page  ${e_invest_newFunds_openEnded}
    Verify Text On Page  ${e_invest_newFunds_closeEnded}
    # Top Searched
    Swipe By Percent  45  15  20  15  15000
    Wait And Click Element On Android  ${KU_A_invest_topSearched} 
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    
Verify Navigation To Tabs For Stocks
    # AllUSStocks
    [Arguments]  ${stocksMenu}  ${importTitle}  ${watchlistTitle}
    Wait And Click Element On Android  ${stocksMenu}
    Verify Page Contains Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    Verify Import Tag  ${importTitle}
    # Watchlist
    Wait And Click Element On Android  ${KU_A_invest_watchlistMenu}
    Verify Watchlist Menu Details  ${watchlistTitle}
    # Gainers
    Wait And Click Element On Android  ${KU_A_invest_gainers}
    Verify Page Contains Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    # Losers
    Swipe By Percent  45  15  20  15  15000
    Wait And Click Element On Android  ${KU_A_invest_losers}
    Verify Page Contains Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    # 52WHigh
    Swipe By Percent  45  15  20  15  15000
    Wait And Click Element On Android  ${KU_A_invest_52WHigh}
    Verify Page Contains Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    Wait And Click Element On Android  ${KU_A_watchListBtn}
    Verify Login Page And Go Back
    # 52WLow
    Swipe By Percent  45  15  20  15  15000
    Wait And Click Element On Android  ${KU_A_invest_52WHigh}
    Verify Page Contains Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    Wait And Click Element On Android  ${KU_A_watchListBtn}
    Verify Login Page And Go Back 
 