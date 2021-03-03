*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Value Funds Page
    Log To Console  Value Funds
    Wait And Click Element On Android  ${KU_A_invest_VF_tilesTitle}
    Verify Text On Page  ${e_invest_VF_screenTitle} 
    Verify Text On Page  ${e_invest_ELSS_topRated_investorChoiceFilter} 
    Verify Signup Link And Kuvera Logo
    Verify Sort And Filter Button  ${e_invest_ELSS_topRated_investorChoiceFilter}
    Verify Presence Of Search Box WatchList Growth Button 
    Verify Navigation To Tabs For Funds
    Go Back