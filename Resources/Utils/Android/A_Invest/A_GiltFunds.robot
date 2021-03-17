*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Gilt Funds Page
    Log To Console  Gilt Funds
    Wait And Click Element On Android  ${KU_A_invest_GF_tilesTitle}
    Sleep  1s
    Verify Text On Page  ${e_invest_GF_screenTitle} 
    Verify Text On Page  ${e_invest_GF_US_BankPSU_filteredFund} 
    Sleep  1s
    Verify Signup Link And Kuvera Logo
    Verify Sort And Filter Button  ${e_invest_GF_US_BankPSU_filteredFund}
    Verify Presence Of Search Box WatchList Growth Button 
    Verify Navigation To Tabs For Funds
    Go Back