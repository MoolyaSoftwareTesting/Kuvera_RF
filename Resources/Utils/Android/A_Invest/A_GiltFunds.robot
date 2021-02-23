*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Gilt Funds Page
    Log To Console  Gilt Funds
    Wait And Click Element On Android  ${KU_A_invest_GF_title}
    Verify Text On Page  ${e_invest_GF_screenTitle} 
    Verify Text On Page  ${e_invest_GF_filteredFund} 
    Verify Presence Of Search Box WatchList Growth Button 
    Verify Sort And Filter Button
    Verify Navigation To Tabs For Funds