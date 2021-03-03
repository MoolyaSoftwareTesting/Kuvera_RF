*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Bank & PSU Bonds Page
    Log To Console  Bank & PSU Bonds
    Wait And Click Element On Android  ${KU_A_invest_BankPSU_tilesTitle}
    Verify Text On Page  ${e_invest_BankPSU_screenTitle}
    Verify Text On Page  ${e_invest_GF_US_BankPSU_filteredFund} 
    Verify Signup Link And Kuvera Logo
    Verify Sort And Filter Button  ${e_invest_GF_US_BankPSU_filteredFund}
    Verify Presence Of Search Box WatchList Growth Button 
    Verify Navigation To Tabs For Funds
    Go Back