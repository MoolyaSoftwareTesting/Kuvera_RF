*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin ELSS Tax Saver Page
    Log To Console  ELSS Tax Saver
    Wait And Click Element On Android  ${KU_A_invest_ELSS_tilesTitle}
    Sleep  1s
    Verify Text On Page  ${e_invest_saveTaxFilter} 
    Verify Text On Page  ${e_invest_ELSS_topRated_investorChoiceFilter} 
    Sleep  1s
    Verify Signup Link And Kuvera Logo
    Verify Search Box Sort And Watchlist Button For ELSS And Stocks  ${e_invest_3Y}
    Verify Navigation To Tabs For Funds
    Go Back