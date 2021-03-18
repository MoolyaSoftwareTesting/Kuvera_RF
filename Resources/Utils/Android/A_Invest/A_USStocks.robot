*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin US Stocks Page
    Log To Console  US Stocks
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Swipe By Percent  85  85  20  85  15000
    Verify Page Contains Element On Android  ${KU_A_invest_USStocks_imgfromExplore}
    Verify Page Contains Element On Android  ${KU_A_invest_USStocks_title}
    Wait And Click Element On Android  ${KU_A_invest_USStocks_title}
    Sleep  1s
    Verify Signup Link And Kuvera Logo
    Wait And Click Element On Android  ${KU_A_invest_USStocks_explore}
    Verify Search Box Sort And Watchlist Button For ELSS And Stocks  ${e_invest_1Y}
    Verify Login Page And Go Back 
    Verify Navigation To Tabs For Stocks  ${KU_A_invest_allUSStocks}  ${KU_A_invest_USStocks_importTagTitle}  ${KU_A_invest_USStocks_watchlistTitle}
    Swipe By Percent  45  15  60  15  15000
    Wait And Click Element On Android  ${KU_A_invest_ETFMenu}
    Verify Text On Page  ${e_invest_ETF_filteredStock}
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_USStocks_explore}
    FOR  ${i}  IN RANGE  1  6
        # Iterate the US Stock detail screen
        ${USStocksFromJson}  Get Json Values On Android  $.USStocks.f${i}  Resources/TestData/USStocks.json 
        Log To Console  ${USStocksFromJson}
        Verify US Stocks Details Page On Android  ${USStocksFromJson}
    END
    Go Back 
    Verify US Stocks Landing screen

Verify US Stocks Details Page On Android
    [Arguments]  ${USStocks}
    ${USStocks1} =  Convert To String  ${USStocks}
    ${USStocksN} =  Get Fund Or Stock Name  ${USStocks1}
    Verify Search Functionality  ${USStocksN}
    ${text} =    Set Variable   xpath=(//*[@text=
    ${USStockName} =    Set Variable   '${USStocksN}'])[2]
    ${USStkName} =    Set Variable   ${text}${USStockName}
    Verify Page Contains Element On Android  ${USStkName}
    Wait And Click Element On Android  ${USStkName}
    Sleep  2s
    Verify Text On Page  ${USStocksN}
    IF  ${USStocks} == ['${e_invest_USStocks_USStocks1}']
        Verify Filters For MF And Stocks  ${KU_A_invest_USStocks_consumerCyclicalBtn}  ${KU_A_invest_USStocks_autoManufacturersBtn}  ${KU_A_invest_allUSStocks}
    ELSE IF  ${USStocks} == ['${e_invest_USStocks_USStocks2}']  
        Verify Filters For MF And Stocks  ${KU_A_invest_USStocks_technologyBtn}  ${KU_A_invest_USStocks_softwareAppBtn}  ${KU_A_invest_allUSStocks}
    ELSE IF  ${USStocks} == ['${e_invest_USStocks_USStocks3}']  
        Verify Filters For MF And Stocks  ${KU_A_invest_USStocks_communicationBtn}  ${KU_A_invest_USStocks_telecomBtn}  ${KU_A_invest_allUSStocks}
    ELSE IF  ${USStocks} == ['${e_invest_USStocks_USStocks4}'] 
        Verify Filters For MF And Stocks  ${KU_A_invest_USStocks_technologyBtn}  ${KU_A_invest_USStocks_semiconductorsBtn}  ${KU_A_invest_allUSStocks}
    ELSE IF  ${USStocks} == ['${e_invest_USStocks_USStocks5}'] 
        Verify Filters For MF And Stocks  ${KU_A_invest_USAndstocks_healthcareBtn}  ${KU_A_invest_USStocks_drugBtn}  ${KU_A_invest_allUSStocks}
    END 
    Verify Share PDF And Watchlist Icon
    Verify Buy Icon
    Verify Import Icon
    Verify Period Wise Graphs  ${KU_A_invest_1DBtn}  ${KU_A_invest_1WBtn}  ${KU_A_invest_3MBtn}  ${KU_A_invest_1YBtn}  ${KU_A_invest_5YBtn}
    Swipe By Percent  90  90  50  50  9000
    Verify Common Stock And US Stock Values
    Verify Specific US Stocks Values
    Swipe By Percent  90  90  45  45  9000
    # Compare to Other section has also US stocks name in different format for different stocks - it has been skipped now
    # Verify Compare With Other Section  ${e_invest_compareWithStock}  ${KU_A_invest_stocks_stk1}
    Verify Add Fund Or Stock  ${KU_A_invest_USAndstocks_addStocks}  ${KU_A_invest_USAndstocks_searchStocks}
    Sleep  1s
    Go Back

Verify US Stocks Landing screen
    Log To Console  US Stocks Landing Page
    Verify Page Contains Element On Android  ${KU_A_USStocksTitle}
    Verify Page Contains Element On Android  ${KU_A_USStocksSubTitle1}
    Verify Page Contains Element On Android  ${KU_A_USStocks_vestedImg}
    Verify Page Contains Element On Android  ${KU_A_USStocksSubTitle2}
    Wait And Click Element On Android  ${KU_A_invest_USStocks_startInvestingBtn} 
    Verify Login Page And Go Back 
    Verify Text On Page  ${e_invest_USStocks_ownYourFavorite}
    Verify Text On Page  ${e_invest_USStocks_startWith} 
    Verify Text On Page  ${e_invest_USStocks_10Dollar}
    Verify Text On Page  ${e_invest_USStocks_investIn}
    Verify Text On Page  ${e_invest_USStocks_stockValue} 
    Verify Text On Page  ${e_invest_USStocks_stocksAndETFs}
    Verify Text On Page  ${e_invest_USStocks_easyMoneyTransfer} 
    Swipe By Percent  90  90  45  45  9000
    Verify Stock Navigation And Explore More
    Swipe By Percent  90  90  45  45  9000
    Verify Page Contains Element On Android  ${KU_A_invest_USStocks_zeroBrokerageImg}
    Verify Text On Page  ${e_invest_USStocks_payLessGetMore}
    Verify Page Contains Element On Android  ${KU_A_invest_USStocks_stockTaxImg}
    Verify Text On Page  ${e_invest_USStocks_stressFreeInvesting}
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn} 


Verify Stock Navigation And Explore More
    Wait And Click Element On Android  ${KU_A_invest_USStocks_stockLink1}
    Verify Page Contains Element On Android  ${KU_A_invest_USStocks_stockName1}
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_USStocks_stockLink2}
    Verify Page Contains Element On Android  ${KU_A_invest_USStocks_stockName2} 
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_USStocks_stockLink3}
    Verify Text On Page  ${e_invest_USStocks_USStocks1}
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_USStocks_stockLink4} 
    Verify Page Contains Element On Android  ${KU_A_invest_USStocks_stockName4}
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_USStocks_exploreMoreBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_allUSStocks}
    Go Back
    
Verify Import Icon
    Wait And Click Element On Android  ${KU_A_invest_USStocks_importBtn}
    Verify Login Page And Go Back 

Verify Specific US Stocks Values
    Verify Text On Page  ${e_invest_USStocks_prevCloseLabel}
    Verify Text On Page  ${e_invest_USStocks_openLabel}
    Verify Text On Page  ${e_invest_USStocks_sharesOSLabel}
    Verify Text On Page  ${e_invest_USStocks_prevCloseLabel}
    Verify Text On Page  ${e_invest_USStocks_prevCloseLabel}