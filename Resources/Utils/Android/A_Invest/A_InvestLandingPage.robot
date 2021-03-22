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
    Verify Page Contains Element On Android  ${KU_A_invest_SS_tilesTitle}
    Verify Text On Page  ${e_invest_SS_subTitle}
    Log To Console  SaveSmart
    Wait And Click Element On Android  ${KU_A_invest_SS_tilesTitle}
    Verify Title And SubTitle Of SaveSmart
    Go Back
    # FD
    Verify Page Contains Element On Android  ${KU_A_invest_FDImg}
    Verify Page Contains Element On Android  ${KU_A_invest_FD_tilesTitle}
    Verify Page Contains Element On Android  ${KU_A_invest_FD_subTitle}
    Log To Console  FD 
    Wait And Click Element On Android  ${KU_A_invest_FD_tilesTitle}
    Verify Text On Page  ${e_invest_FD_allFDMenu}
    Go Back
    # Bank PSU Bonds
    Verify Page Contains Element On Android  ${KU_A_invest_BankPSU_tilesTitle}
    Verify Android PreLogin Bank & PSU Bonds Page
    Go Back
    # Digi Gold
    Verify Page Contains Element On Android  ${KU_A_invest_digiGold_imgIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_digiGold_tilesTitle}
    Verify Page Contains Element On Android  ${KU_A_invest_digiGold_subTitle}
    Log To Console  Digi Gold
    Wait And Click Element On Android  ${KU_A_invest_digiGold_tilesTitle}
    Verify Text On Page  ${e_gold_screenTitle}
    Go Back
    # Ultra-Short
    Verify Page Contains Element On Android  ${KU_A_invest_US_tilesTitle}
    Verify Text On Page  ${e_invest_US_subTitle}
    Verify Android PreLogin Ultra Short Page
    Go Back
    # Gilt Funds
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Verify Page Contains Element On Android  ${KU_A_invest_GF_title}
    Verify Page Contains Element On Android  ${KU_A_invest_GF_subTitle}
    Verify Android PreLogin Gilt Funds Page
    Go Back
    # ELSS Tax Saver
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Verify Page Contains Element On Android  ${KU_A_invest_ELSS_tilesTitle}
    Verify Text On Page  ${e_invest_ELSS_subTitle} 
    Verify Android PreLogin ELSS Tax Saver Page
    Go Back
    # US ETF
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Verify Page Contains Element On Android  ${KU_A_invest_ETF_tilesTitle}
    Verify Page Contains Element On Android  ${KU_A_invest_ETF_imgIcon} 
    Verify Text On Page  ${e_invest_ETF_subTitle} 
    Verify Android PreLogin US ETF Page
    Go Back
    # Equity Index
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Verify Page Contains Element On Android  ${KU_A_invest_EI_tilesTitle} 
    Verify Text On Page  ${e_invest_EI_subTitle}
    Verify Android PreLogin Equity Index Page
    Go Back
    # Sector Funds
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Swipe By Percent  45  15  70  15  15000
    Verify Page Contains Element On Android  ${KU_A_invest_SF_tilesTitle} 
    Verify Page Contains Element On Android  ${KU_A_invest_SF_subTitle}
    Verify Android PreLogin Sector Funds Page
    Go Back
    # Value Funds
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Swipe By Percent  45  15  70  15  15000
    Verify Page Contains Element On Android  ${KU_A_invest_VF_tilesTitle} 
    Verify Page Contains Element On Android  ${KU_A_invest_VF_subTitle}
    Verify Android PreLogin Value Funds Page
    Go Back
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
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Swipe By Percent  45  15  70  15  15000
    Verify Page Contains Element On Android  ${KU_A_invest_52WkIndia_tilesTitle} 
    Verify Page Contains Element On Android  ${KU_A_invest_52WkIndia_subTitle}
    Verify Android PreLogin 52Wk High India Page
    Go Back
    # 52Wk High US
    Wait And Click Element On Android  ${KU_A_invest_seekBar}
    Swipe By Percent  45  15  70  15  15000
    Verify Page Contains Element On Android  ${KU_A_invest_52WkUS_tilesTitle} 
    Verify Page Contains Element On Android  ${KU_A_invest_52WkUS_subTitle}
    Verify Android PreLogin 52Wk High US Page
    Go Back


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
    Wait And Click Element On Android  ${KU_A_invest_52WLow}
    Verify Page Contains Element On Android  ${KU_A_invest_sortBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    ${elementSize} =  Get Matching Xpath Count  //*[@text='watchlist-unselected-blue']
    IF  ${elementSize}>0  
        Verify Watchlist For 52Wk Low    
    ELSE
        Wait And Click Element On Android  ${KU_A_invest_stocks_allStocksLink}
        Verify Watchlist For 52Wk Low
    END
    

Verify Watchlist For 52Wk Low
    Verify Page Contains Element On Android  ${KU_A_watchListBtn}
    Wait And Click Element On Android  ${KU_A_watchListBtn}
    Verify Login Page And Go Back 
    
Verify Search Functionality
    [Arguments]  ${fund_stockName}
    Wait And Click Element On Android  ${KU_A_inputField}
    Input Text  ${KU_A_inputField}  ${fund_stockName}
    Hide Keyboard
    Sleep  1s
    # Wait And Click Element On Android  ${KU_A_invest_searchIcon}

Verify Filters For MF And Stocks
    [Arguments]  ${filter1}  ${filter2}  ${allFund_stockMenu}
    Wait And Click Element On Android  ${filter1}
    Verify Page Contains Element On Android  ${allFund_stockMenu}
    Go Back
    Wait And Click Element On Android  ${filter2}
    Verify Page Contains Element On Android  ${allFund_stockMenu}
    Go Back

Verify Period Wise Graphs  
    [Arguments]  ${period1}  ${period2}  ${period3}  ${period4}  ${period5}
    Wait And Click Element On Android  ${period1}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}
    Wait And Click Element On Android  ${period2}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}
    Wait And Click Element On Android  ${period3}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}
    Wait And Click Element On Android  ${period4}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}
    Wait And Click Element On Android  ${period5}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}

Verify Compare With Other Section
    Swipe By Percent  90  90  50  50  9000
    [Arguments]  ${fund_stockName}  ${compareWithFund_stock}
    Verify Text On Page  ${compareWithFund_stock} 
    Verify Page Contains Element On Android  ${fund_stockName}
    Wait And Click Element On Android  ${KU_A_invest_ascArrow1}
    Verify Page Contains Element On Android  ${fund_stockName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow1}
    Verify Page Contains Element On Android  ${fund_stockName} 
    Wait And Click Element On Android  ${KU_A_invest_ascArrow2}
    Verify Page Contains Element On Android  ${fund_stockName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow2}
    Verify Page Contains Element On Android  ${fund_stockName} 
    Swipe By Percent  75  75  30  75  15000
    Wait And Click Element On Android  ${KU_A_invest_ascArrow3}
    Verify Page Contains Element On Android  ${fund_stockName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow2}
    Verify Page Contains Element On Android  ${fund_stockName} 
    FOR  ${j}  IN RANGE  1  3
        Wait And Click Element On Android  ${KU_A_invest_ascArrow4}
        Verify Page Contains Element On Android  ${fund_stockName}
        Wait And Click Element On Android  ${KU_A_invest_descArrow3}
        Verify Page Contains Element On Android  ${fund_stockName} 
        Wait And Click Element On Android  ${KU_A_invest_ascArrow5}
        Verify Page Contains Element On Android  ${fund_stockName}
        Wait And Click Element On Android  ${KU_A_invest_descArrow4}
        Verify Page Contains Element On Android  ${fund_stockName} 
        Swipe By Percent  75  75  30  75  15000
    END

Verify Add Fund Or Stock
    [Arguments]  ${addFund_stockBtn}  ${serchFund_stockScreen}
    Swipe By Percent  50  50  40  40  9000
    Wait And Click Element On Android  ${addFund_stockBtn}
    Sleep  1s
    Verify Page Contains Element On Android  ${serchFund_stockScreen} 
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_invest_MF_closePopup}

Verify Share PDF And Watchlist Icon
    Wait And Click Element On Android  ${KU_A_invest_socialSharingIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_fbIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_twitterIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_whatsappIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_telegramIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_emailIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_copyLink}
    Wait And Click Element On Android  ${KU_A_invest_socialSharingIcon}
    # Download option is not appearing in automation even after 90 secs
    # Wait And Click Element On Android  ${KU_A_invest_pdfIcon}
    # Wait Until Element Is Visible  ${KU_A_invest_downloadIcon}  timeout=90
    # Verify Page Contains Element On Android  ${KU_A_invest_downloadIcon}
    # Go Back
    Wait And Click Element On Android  ${KU_A_watchListBtn}
    Verify Login Page And Go Back 

Verify Buy Icon
    Wait And Click Element On Android  ${KU_A_invest_buyIcon}
    Verify Login Page And Go Back    

Verify Common Stock And US Stock Values
    Verify Text On Page  ${e_invest_stocks_todaysHighLabel}
    Verify Text On Page  ${e_invest_stocks_todaysLowLabel}
    Verify Text On Page  ${e_invest_stocks_52WHighLabel}
    Verify Text On Page  ${e_invest_stocks_52WLowLabel}
    Verify Text On Page  ${e_invest_stocks_PELabel}
    Verify Text On Page  ${e_invest_1Y}
    Verify Text On Page  ${e_invest_stocks_EPS(TTM)Label}
    Verify Text On Page  ${e_invest_stocks_marketCapLabel} 
    Verify Text On Page  ${e_invest_stocks_volumeLabel}
    Verify Text On Page  ${e_invest_5Y} 