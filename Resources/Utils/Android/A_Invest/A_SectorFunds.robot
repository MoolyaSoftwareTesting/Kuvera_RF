*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Sector Funds Page
    Log To Console  Sector Funds
    Wait And Click Element On Android  ${KU_A_invest_SF_tilesTitle}
    Sleep  1s
    Verify Text On Page  ${e_invest_SF_screenTitle} 
    Verify Text On Page  ${e_invest_ELSS_topRated_investorChoiceFilter} 
    Sleep  1s
    Verify Signup Link And Kuvera Logo
    Verify Sort And Filter Button  ${e_invest_ELSS_topRated_investorChoiceFilter}
    Verify Presence Of Search Box WatchList Growth Button 
    Verify Login Page And Go Back
    Verify Navigation To Tabs For Funds
    Go Back