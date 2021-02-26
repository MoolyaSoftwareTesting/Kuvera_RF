*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin ELSS Tax Saver Page
    Log To Console  ELSS Tax Saver
    Wait And Click Element On Android  ${KU_A_invest_ELSS_tilesTitle}
    Verify Text On Page  ${e_invest_saveTaxFilter} 
    Verify Text On Page  ${e_invest_ELSS_topRated_investorChoiceFilter} 
    Verify Signup Link And Kuvera Logo
    Verify Search Box Sort And Watchlist Button For ELSS And USETF  ${e_invest_3Y}
    Verify Navigation To Tabs For Funds
    Go Back