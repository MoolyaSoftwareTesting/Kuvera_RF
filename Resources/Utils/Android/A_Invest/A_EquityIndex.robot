*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Equity Index Page
    Log To Console  Equity Index
    Wait And Click Element On Android  ${KU_A_invest_EI_tilesTitle}
    Verify Text On Page  ${e_invest_EI_screenTitle} 
    Verify Text On Page  ${e_invest_EI_filteredFund} 
    Verify Signup Link And Kuvera Logo
    Verify Sort And Filter Button  ${e_invest_EI_filteredFund}
    Verify Presence Of Search Box WatchList Growth Button 
    Verify Navigation To Tabs For Funds
    Go Back