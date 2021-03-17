*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin 52Wk High US Page
    Log To Console  52Wk High US
    Wait And Click Element On Android  ${KU_A_invest_52WkUS_tilesTitle}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_filterBtn}
    Sleep  1s
    Verify Signup Link And Kuvera Logo
    Verify Search Box Sort And Watchlist Button For ELSS And Stocks  ${e_invest_1Y}
    Verify Login Page And Go Back 
    Verify Navigation To Tabs For Stocks  ${KU_A_invest_allUSStocks}  ${KU_A_invest_USStocks_importTagTitle}  ${KU_A_invest_USStocks_watchlistTitle}
    Swipe By Percent  45  15  60  15  15000
    Wait And Click Element On Android  ${KU_A_invest_ETFMenu}
    Verify Text On Page  ${e_invest_ETF_filteredStock}
    Go Back