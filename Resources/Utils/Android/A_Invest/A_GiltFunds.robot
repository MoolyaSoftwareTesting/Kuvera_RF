*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Gilt Funds Page
    Log To Console  Gilt Funds
    Wait And Click Element On Android  ${KU_A_invest_GF_tilesTitle}
    Verify Text On Page  ${e_invest_GF_screenTitle} 
    Verify Text On Page  ${e_invest_GF_US_filteredFund} 
    Verify Signup Link And Kuvera Logo
    Verify Presence Of Search Box WatchList Growth Button 
    Verify Sort And Filter Button  ${e_invest_GF_US_filteredFund}
    Verify Navigation To Tabs For Funds
    Go Back