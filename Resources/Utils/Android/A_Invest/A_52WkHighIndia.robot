*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin 52Wk High India Page
    Log To Console  52Wk High India
    Wait And Click Element On Android  ${KU_A_invest_52WkIndia_tilesTitle}
    Sleep  1s
    Verify Signup Link And Kuvera Logo
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    Verify Search Box Sort And Watchlist Button For ELSS And Stocks  ${e_invest_1Y}
    Verify Login Page And Go Back 
    Swipe By Percent  45  15  60  15  15000
    Verify Navigation To Tabs For Stocks  ${KU_A_invest_52WkIndia_allStocksMenu}  ${KU_A_invest_52WkIndia_importTitle}  ${KU_A_invest_52WkIndia_watchlistTitle}
    # Go Back