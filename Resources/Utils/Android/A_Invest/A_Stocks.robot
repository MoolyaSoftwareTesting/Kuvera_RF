*** Settings ***

Library     AppiumLibrary


*** Keywords ***

Verify Android PreLogin Stocks Page
    Log To Console  Stocks
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Verify Page Contains Element On Android  ${KU_A_invest_stocks_imgfromExplore}
    Verify Page Contains Element On Android  ${KU_A_invest_stocks_title}
    Wait And Click Element On Android  ${KU_A_invest_stocks_title}
    # Verify Signup Link And Kuvera Logo
    # Verify Search Box Sort And Watchlist Button For ELSS And Stocks  ${e_invest_1Y}
    # Verify Login Page And Go Back 
    # Verify Navigation To Tabs For Stocks  ${KU_A_invest_allStocks}  ${KU_A_invest_stocks_importTagTitle}  ${KU_A_invest_stocks_watchlistTitle}
    # Go Back
    # Wait And Click Element On Android  ${KU_A_invest_stocks_title}
    FOR  ${i}  IN RANGE  1  6
        # Iterate the Mutual Fund detail screen
        ${stocks}  Get Json Values On Android  $.Stocks.f${i}  Resources/TestData/Stocks.json 
        Log To Console  ${stocks}
        Verify Stocks Details Page On Android  ${stocks}
    END

Verify Stocks Details Page On Android
    [Arguments]  ${stocks}
    ${stocks1} =  Convert To String    ${stocks}
    ${stocks2} =  Replace String  ${stocks1}  ['  ${EMPTY}
    ${stocksName} =  Replace String  ${stocks2}  ']  ${EMPTY}
    Log To Console  ${stocksName}
    Verify Search Functionality  ${stocksName}
    ${a} =    Set Variable   xpath=//*[contains(text(),
    ${b} =    Set Variable   '${stocksName}')]
    ${stkName} =    Set Variable   ${a}${b}
    Log To Console  ${stkName}
    Wait And Click Element On Android  ${stkName}
    Verify Page Contains Element On Android  ${stkName}
    Verify Filters For MF And Stocks  ${KU_A_invest_stocks_utilitiesBtn}  ${KU_A_invest_stocks_renewUtilityBtn}  ${KU_A_invest_allStocks}
    Wait And Click Element On Android  ${KU_A_invest_buyIcon}
    Verify Login Page And Go Back 
    Verify Period Wise Graphs  ${KU_A_invest_1DBtn}  ${KU_A_invest_1WBtn}  ${KU_A_invest_3MBtn}  ${KU_A_invest_1YBtn}  ${KU_A_invest_5YBtn}
    Swipe By Percent  90  90  50  50  9000
    Verify Compare With Other Section  ${e_invest_stocks_compareWithStock}  ${KU_A_invest_stocks_stk1}





    