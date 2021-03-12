*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin US ETF Page
    Log To Console  US ETF
    Wait And Click Element On Android  ${KU_A_invest_ETF_tilesTitle}
    Verify Signup Link And Kuvera Logo
    Verify Text On Page  ${e_invest_ETF_filteredStock}
    Verify Search Box Sort And Watchlist Button For ELSS And Stocks  ${e_invest_1Y}
    Verify Login Page And Go Back 
    Verify Navigation To Tabs For Stocks  ${KU_A_invest_allUSStocks}  ${KU_A_invest_USStocks_importTagTitle}  ${KU_A_invest_USStocks_watchlistTitle}
    # Go Back