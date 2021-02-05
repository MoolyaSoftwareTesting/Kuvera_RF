*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify PreLogin Landing Page Widgets
    Verify Signup Link And Kuvera Logo
    Swipe By Percent  30  30  10  10  900
    Verify Widgets And Title  ${KU_A_stocksLabel}  ${e_stocksLabel}  ${KU_A_stocksSubTitle}  ${e_stocksSubTitle}
    Verify Stock Widgets
    Verify Widgets And Title  ${KU_A_USStocksLabel}  ${e_USStocksLabel}  ${KU_A_USStocksTitle}  ${e_USStocksTitle} 
    Verify US Stocks Widgets 
    Verify Widgets And Title  ${KU_A_savesmartLabel}  ${e_savesmartLabel}  ${KU_A_savesmartTitle}  ${e_savesmartTitle}
    Verify SaveSmart Widgets
    # Swipe By Percent  98  98  99  99  1000
    Verify Widgets And Title  ${KU_A_goldLabel}  ${e_goldLabel}  ${KU_A_goldTitle}  ${e_goldTitle}
    Verify Gold Widgets
    Verify Mutual Fund Widgets

Verify Mutual Fund Widgets
    Wait And Verify Element And Text On Android  ${KU_A_MFLabel}  ${e_MFLabel}
    Wait And Click Element On Android  ${KU_A_MFLabel}
    Wait And Verify Element And Text On Android  ${KU_A_MFTitle}  ${e_MFTitle}
    Wait And Verify Element And Text On Android  ${KU_A_MFSubTitle}  ${e_MFSubTitle} 
    Verify Login And Signup Button
    Wait And Verify Element And Text On Android  ${KU_A_croreAUALabel}  ${e_croreAUALabel}
    Wait And Verify Element And Text On Android  ${KU_A_croreAUAVal}  ${e_croreAUAVal}
    Wait And Verify Element And Text On Android  ${KU_A_goalsLabel}  ${e_goalsLabel}
    Wait And Verify Element And Text On Android  ${KU_A_goalsVal}  ${e_goalsVal} 
    Wait And Verify Element And Text On Android  ${KU_A_transactionsLabel}  ${e_transactionsLabel}
    Wait And Verify Element And Text On Android  ${KU_A_transactionsVal}  ${e_transactionsVal}
    Swipe By Percent  30  30  10  10  900
    Wait For Element Visibility On Android  ${KU_A_MF_fundName}
    Verify Page Contains Element On Android  ${KU_A_MF_fundName}
    Verify Watchlist Button
    Swipe By Percent  85  85  50  50  900
    Wait For Element Visibility On Android  ${KU_A_MF_exploreMFBtn}
    Verify Page Contains Element On Android  ${KU_A_MF_exploreMFBtn}
    Verify Presence Of Bot Button  ${KU_A_MF_faqBotBtn}    

Verify Stock Widgets
    Wait And Verify Element And Text On Android  ${KU_A_stocksTitle}  ${e_stocksLabel}
    Verify Page Contains Element On Android  ${KU_A_stocksImg}
    Swipe By Percent  30  30  10  10  900
    Verify Page Contains Element On Android  ${KU_A_stocks_name}
    Verify Page Contains Element On Android  ${KU_A_stocks_category}
    Verify Page Contains Element On Android  ${KU_A_stocks_filter}
    Verify Price Year And Market Label For Stocks And USStocks
    Wait For Element Visibility On Android  ${KU_A_stocks_priceValue}
    Verify Page Contains Element On Android  ${KU_A_stocks_priceValue}
    Wait For Element Visibility On Android  ${KU_A_stocks_yearRate}
    Verify Page Contains Element On Android  ${KU_A_stocks_yearRate}
    Wait For Element Visibility On Android  ${KU_A_stocks_marketValue}
    Verify Page Contains Element On Android  ${KU_A_stocks_marketValue}
    Verify Watchlist Button
    Wait And Click Element On Android  ${KU_A_stocksLabel}
    Swipe By Percent  85  85  50  50  900
    Click On Explore Button And Verify Navigated Page  ${KU_A_stocks_exploreStocksBtn}  ${KU_A_stocks_allStocksTab}  ${e_stocks_allStocksTab}  ${KU_A_logo} 
    
Verify US Stocks Widgets    
    Wait And Verify Element And Text On Android  ${KU_A_USStocksSubTitle1}  ${e_USStocksSubTitle1}
    Verify Page Contains Element On Android  ${KU_A_USStocks_imgIcon}
    Verify Page Contains Element On Android  ${KU_A_USStocks_vestedImg}
    Wait And Verify Element And Text On Android  ${KU_A_USStocksSubTitle2}  ${e_USStocksSubTitle2}
    Verify Page Contains Element On Android  ${KU_A_USStocks_startTodayBtn}
    Wait And Click Element On Android  ${KU_A_USStocks_startTodayBtn}
    Verify Login Page
    Wait And Click Element On Android  ${KU_A_USStocksLabel}
    Click On Explore Button And Verify Navigated Page  ${KU_A_USStocks_exploreBtn}  ${KU_A_USStocks_allUSStocksTab}  ${e_USStocks_allUSStocksTab}  ${KU_A_logo}
    Wait And Click Element On Android  ${KU_A_USStocksLabel}
    Swipe By Percent  30  30  10  10  900
    Verify Page Contains Element On Android  ${KU_A_USStocks_name}
    Verify Page Contains Element On Android  ${KU_A_USStocks_category}
    Verify Price Year And Market Label For Stocks And USStocks
    Verify Page Contains Element On Android  ${KU_A_USStocks_priceValue}
    Verify Page Contains Element On Android  ${KU_A_USStocks_yearRate}
    Verify Page Contains Element On Android  ${KU_A_USStocks_marketValue}
    Verify Watchlist Button
    Wait And Click Element On Android  ${KU_A_USStocksLabel}
    Swipe By Percent  85  85  30  30  900
    Click On Explore Button And Verify Navigated Page  ${KU_A_USStocks_exploreUSStocksBtn}  ${KU_A_USStocks_allUSStocksTab}  ${e_USStocks_allUSStocksTab}  ${KU_A_logo}

Verify SaveSmart Widgets
    Wait And Verify Element And Text On Android  ${KU_A_savesmartSubTitle}  ${e_savesmartSubTitle}
    Swipe By Percent  50  50  20  20  900
    Wait And Verify Element And Text On Android  ${KU_A_SS_startSaveSmart}  ${e_SS_startSaveSmart}
    Wait And Click Element On Android  ${KU_A_SS_amountField}
    Input Text  ${KU_A_SS_amountField}  ${e_SS_amount}
    Wait And Click Element On Android  ${KU_A_button}
    Verify Login Page
    Wait And Click Element On Android  ${KU_A_savesmartLabel}
    Swipe By Percent  85  85  30  30  900
    Click On Explore Button And Verify Navigated Page  ${KU_A_SS_exploreSSBtn}  ${KU_A_SS_screenTitle}  ${e_SS_screenTitle}  ${KU_A_logo}
    
Verify Gold Widgets
    Wait And Verify Element And Text On Android  ${KU_A_goldSubTitle}  ${e_goldSubTitle}
    Swipe By Percent  85  85  30  30  900
    Wait And Verify Element And Text On Android  ${KU_A_gold_buyRateLabel}  ${e_gold_buyRateLabel} 
    Wait And Verify Element And Text On Android  ${KU_A_gold_partnerLabel}  ${e_gold_partnerLabel}
    Wait And Verify Element And Text On Android  ${KU_A_gold_purityLabel}  ${e_gold_purityLabel}
    Wait And Verify Element And Text On Android  ${KU_A_gold_partner}  ${e_gold_partner}
    Wait And Verify Element And Text On Android  ${KU_A_gold_purityValue}  ${e_gold_purityValue} 
    Wait And Verify Element And Text On Android  ${KU_A_gold_rupeeIcon}  ${e_gold_rupeeIcon}
    Wait And Verify Element And Text On Android  ${KU_A_gold_liveGoldValue}  ${e_gold_liveGoldValue}
    Wait And Verify Element And Text On Android  ${KU_A_gold_unit}  ${e_gold_unit}
    Wait And Verify Element And Text On Android  ${KU_A_gold_enterAmtLabel}  ${e_gold_enterAmtLabel}
    Wait And Verify Element And Text On Android  ${KU_A_gold_enterGmLabel}  ${e_gold_enterGmLabel}
    Wait And Verify Element And Text On Android  ${KU_A_gold_rupeeIcon}  ${e_gold_rupeeIcon}
    Wait And Verify Element And Text On Android  ${KU_A_gold_liveGoldValue}  ${e_gold_liveGoldValue}
    Wait And Verify Element And Text On Android  ${KU_A_gold_unit}  ${e_gold_unit}
    Wait And Verify Element And Text On Android  ${KU_A_gold_enterAmtLabel}  ${e_gold_enterAmtLabel}
    Wait And Click Element On Android  ${KU_A_gold_goldVal}
    Wait For Element Visibility On Android  ${KU_A_gold_gold_gmValue}
    Verify Page Contains Element On Android  ${KU_A_gold_gold_gmValue}
    Wait And Verify Element And Text On Android  ${KU_A_gold_purchaseT&C}  ${e_gold_purchaseT&C}
    Wait And Verify Element And Text On Android  ${KU_A_gold_comingSoon}  ${e_gold_comingSoon}
    Wait And Click Element On Android  ${KU_A_button}
    Verify Login Page
    Wait And Click Element On Android  ${KU_A_goldLabel}
    Swipe By Percent  85  85  30  30  900
    Wait And Click Element On Android  ${KU_A_gold_enterGmLabel}
    Go Back
    Wait And Click Element On Android  ${KU_A_gold_gramOption}
    Wait For Element Visibility On Android  ${KU_A_gold_gold_gmValue}
    Verify Page Contains Element On Android  ${KU_A_gold_gold_gmValue}
    Wait And Click Element On Android  ${KU_A_button}
    Verify Login Page
    Wait And Click Element On Android  ${KU_A_goldLabel}
    Swipe By Percent  85  85  30  30  900
    Click On Explore Button And Verify Navigated Page  ${KU_A_gold_exploreGold}  ${KU_A_goldSubTitle}  ${e_goldSubTitle}  ${KU_A_logo} 

Verify Watchlist Button
    Verify Page Contains Element On Android  ${KU_A_watchListBtn} 
    Wait And Click Element On Android  ${KU_A_watchListBtn}
    Verify Login Page 

Verify Price Year And Market Label For Stocks And USStocks
    Verify Page Contains Element On Android  ${KU_A_US_stocks_priceLabel}
    Verify Page Contains Element On Android  ${KU_A_US_stocks_yearLabel}
    Verify Page Contains Element On Android  ${KU_A_US_stocks_mktCapLabel}

Click On Explore Button And Verify Navigated Page
    [Arguments]  ${fund_stockBtn}  ${allStock_fundTab}  ${allStock_fundText}  ${kuveraLogo}
    Sleep  1s
    Wait For Element Visibility On Android  ${fund_stockBtn}
    Verify Page Contains Element On Android  ${fund_stockBtn}
    Wait And Click Element On Android  ${fund_stockBtn}
    Sleep  1s
    Wait And Verify Element And Text On Android  ${allStock_fundTab}  ${allStock_fundText}
    Wait And Click Element On Android  ${kuveraLogo}
