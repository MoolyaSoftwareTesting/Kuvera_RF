*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Ultra Short Page
    Log To Console  Ultra Short
    Wait And Click Element On Android  ${KU_A_invest_US_tilesTitle}
    Verify Signup Link And Kuvera Logo
    Verify Text On Page  ${e_invest_US_screenTitle}
    Verify Text On Page  ${e_invest_GF_US_BankPSU_filteredFund} 
    Verify Sort And Filter Button  ${e_invest_GF_US_BankPSU_filteredFund}
    Verify Presence Of Search Box WatchList Growth Button 
    Verify Navigation To Tabs For Funds
    Go Back