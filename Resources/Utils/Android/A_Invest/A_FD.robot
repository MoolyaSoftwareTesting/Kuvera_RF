*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin FD Page
    Log To Console  FD
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Verify Page Contains Element On Android  ${KU_A_invest_FD_imgFromExplore}
    Wait And Click Element On Android  ${KU_A_invest_FD_titleFromExplore}
    Verify Text On Page  ${e_invest_FD_allFDMenu}
    Verify Page Contains Element On Android  ${KU_A_invest_watchlistMenu}
    Verify Page Contains Element On Android  ${KU_A_invest_FD_lessThan1Y}
    Verify Page Contains Element On Android  ${KU_A_invest_FD_1YTo3Y} 
    Verify Page Contains Element On Android  ${KU_A_invest_FD_greaterThan3Y}
    Verify Signup Link And Kuvera Logo
    Go Back
