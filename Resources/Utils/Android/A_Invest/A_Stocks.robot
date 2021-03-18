*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Stocks Page
    Log To Console  Stocks
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Verify Page Contains Element On Android  ${KU_A_invest_stocks_imgfromExplore}
    Verify Page Contains Element On Android  ${KU_A_invest_stocks_title}
    Wait And Click Element On Android  ${KU_A_invest_stocks_title}
    Sleep  1s
    Verify Signup Link And Kuvera Logo
    Verify Search Box Sort And Watchlist Button For ELSS And Stocks  ${e_invest_1Y}
    Verify Login Page And Go Back 
    Verify Navigation To Tabs For Stocks  ${KU_A_invest_allStocks}  ${KU_A_invest_stocks_importTagTitle}  ${KU_A_invest_stocks_watchlistTitle}
    Go Back
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_stocks_title}
    FOR  ${i}  IN RANGE  1  6
        # Iterate the Stock detail screen
        ${stocksFromJson}  Get Json Values On Android  $.Stocks.f${i}  Resources/TestData/Stocks.json 
        Log To Console  ${stocksFromJson}
        Verify Stocks Details Page On Android  ${stocksFromJson}
    END

Verify Stocks Details Page On Android
    [Arguments]  ${stock}
    ${stocks1} =  Convert To String  ${stock}
    ${stockN} =  Get Fund Or Stock Name  ${stocks1}
    Verify Search Functionality  ${stockN}
    ${text} =    Set Variable   xpath=(//*[@text=
    ${stockName} =    Set Variable   '${stockN}'])[2]
    ${stkName} =    Set Variable   ${text}${stockName}
    Verify Page Contains Element On Android  ${stkName}
    Wait And Click Element On Android  ${stkName}
    Sleep  2s
    Verify Text On Page  ${stockN}
    IF  ${stock} == ['${e_invest_stocks_stocks1}']
        Verify Filters For MF And Stocks  ${KU_A_invest_stocks_utilitiesBtn}  ${KU_A_invest_stocks_renewUtilityBtn}  ${KU_A_invest_allStocks}
    ELSE IF  ${stock} == ['${e_invest_stocks_stocks2}']  
        Verify Filters For MF And Stocks  ${KU_A_invest_stocks_financialBtn}  ${KU_A_invest_stocks_mortageFinanceBtn}  ${KU_A_invest_allStocks}
    ELSE IF  ${stock} == ['${e_invest_stocks_stocks3}']  
        Verify Filters For MF And Stocks  ${KU_A_invest_USAndstocks_healthcareBtn}  ${KU_A_invest_stocks_biotechBtn}  ${KU_A_invest_allStocks}
    ELSE IF  ${stock} == ['${e_invest_stocks_stocks4}'] 
        Verify Filters For MF And Stocks  ${KU_A_invest_stocks_energyBtn}  ${KU_A_invest_stocks_oilAndGasBtn}  ${KU_A_invest_allStocks}
    ELSE IF  ${stock} == ['${e_invest_stocks_stocks5}'] 
        Verify Filters For MF And Stocks  ${KU_A_invest_stocks_consumerdefenBtn}  ${KU_A_invest_stocks_householdProdBtn}  ${KU_A_invest_allStocks}
    END 
    Verify Share PDF And Watchlist Icon
    Verify Buy Icon 
    Verify Period Wise Graphs  ${KU_A_invest_1DBtn}  ${KU_A_invest_1WBtn}  ${KU_A_invest_3MBtn}  ${KU_A_invest_1YBtn}  ${KU_A_invest_5YBtn}
    Swipe By Percent  90  90  50  50  9000
    Verify Common Stock And US Stock Values
    Verify Specific Stock Values
    Swipe By Percent  90  90  45  45  9000
    # Compare to Other section has also stocks name in different format for different stocks - it has been skipped now
    # Verify Compare With Other Section  ${e_invest_compareWithStock}  ${KU_A_invest_stocks_stk1}
    # Application Issue
    # Verify Add Fund Or Stock  ${KU_A_invest_USAndstocks_addStocks}  ${KU_A_invest_USAndstocks_searchStocks}
    Swipe By Percent  50  50  40  40  9000
    Verify Page Contains Element On Android  ${KU_A_invest_stocks_financials}
    Sleep  1s
    Go Back
    
Verify Specific Stock Values
    Verify Text On Page  ${e_invest_stocks_priceLabel}
    Verify Text On Page  ${e_invest_stocks_avgVolumeLabel} 
    Verify Text On Page  ${e_invest_stocks_PBLabel}  
    Verify Text On Page  ${e_invest_stocks_dividendYieldLabel}   