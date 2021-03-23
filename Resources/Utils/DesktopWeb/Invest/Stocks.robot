*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Stocks Landing Page
    Log To Console  Stocks
    Navigate To Invest Page And Verify Explore Options  ${KU_W_stocks}  ${e_invest_stocks}
    Verify Login And Signup Link  
    Verify Search And Sort  ${KU_W_stockAnd52WIndia_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_stockAndindia_searchTextField}  ${KU_W_invest_sort_52WIndia}
    Verify Element And Text  ${KU_W_invest_stocks_sortYear}  ${e_invest_stocks_sortYear}
    Verify Page Contains Element  ${KU_W_invest_stocks_stockPrice}
    Verify Page Contains Element  ${KU_W_invest_stocks_filteredTag}
    Verify Sort Duration List
    Verify Filter For Stocks
    Verify Search Stocks
    Wait For Element Visibility  ${KU_W_faqbot_icon}
    Verify Presence Of FAQBOT Icon
    Verify Filter Navigation For Stocks And 52 WkHighIndia  ${KU_W_invest_stocks_52WIndia_watchListHeader}  ${e_invest_stocks_watchlistHeader}  ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_stocks_52WIndia_watchListBtn}
    Click Element  ${KU_W_stocks}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_invest_stocks_52WIndia_watchListBtn}
    Verify Watchlist Icon  ${KU_W_invest_stocks_52WIndia_watchListBtn}  
    Verify Login Page 
    # Iterate the Stocks detail screen
    FOR  ${i}  IN RANGE  1  6
        @{stockName} =  Get Json Values  $.Stocks.f${i}  Resources/TestData/Stocks.json 
        Log To Console  ${stockName}
        Search Stocks and Verify  ${stockName}
        Sleep  1s
        Verify Stock Details Screen  ${KU_W_invest_stocks_stockLink}
    END
    Go Back 

Search Stocks and Verify 
    # Verify Search functionality
    [Arguments]  ${stockName}
    Wait For Element Visibility  ${KU_W_invest_stockAndindia_searchTextField}
    Click Element  ${KU_W_invest_stockAndindia_searchTextField}
    Input Text  ${KU_W_invest_stocks_searchField}  ${stockName}  clear=true
    Press Enter Key  ${KU_W_invest_stocks_searchField}
    Sleep  2s

Verify Sort Duration List
    Verify Page Contains Element  ${KU_W_invest_stocks_fundSortVal1D}
    Verify Page Contains Element  ${KU_W_invest_stocks_fundSortVal1Y}
    Verify Page Contains Element  ${KU_W_invest_stocks_fundSortMarketCap}

Verify Filter For Stocks
    Verify Element And Text  ${KU_W_invest_stocks_defaultFilter}  ${e_invest_US_stocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_stocks_defaultFilter}
    Click Element  ${KU_W_invest_stocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_stocks_basicMaterialFilter}
    Click Element  ${KU_W_invest_stocks_basicMaterialFilter}
    Verify Element And Text  ${KU_W_invest_stocks_defaultFilter}  ${e_invest_stocks_basicMaterialFilter}
    Click Element  ${KU_W_invest_stocks_clearAll}
    Verify Element And Text  ${KU_W_invest_stocks_defaultFilter}  ${e_invest_US_stocks_defaultFilter}

Verify Search Stocks
    Wait For Element Visibility  ${KU_W_invest_stockAndindia_searchTextField}
    Click Element  ${KU_W_invest_stockAndindia_searchTextField}
    Wait For Element Visibility  ${KU_W_invest_stocks_searchField}
    Input Text  ${KU_W_invest_stocks_searchField}  ${e_invest_stocks_searchStock}
    Wait For Element Visibility  ${KU_W_invest_stocks_stockName}
    Verify Page Contains Element  ${KU_W_invest_stocks_stockName}
    Wait For Element Visibility  ${KU_W_invest_stocks_clearSearchItem}
    Click Element  ${KU_W_invest_stocks_clearSearchItem}
    Input Text  ${KU_W_invest_stocks_searchField}  ${e_invest_stocks_randomSearchStock}  clear=true
    Press Enter Key  ${KU_W_invest_stocks_searchField}
    # Stability Issue needs to fixed on new release
    # Verify Page Contains Element  ${KU_W_invest_stocks_noSearchResult}
    # Verify Page Contains Image  ${KU_W_invest_stocks_noSearchResultImg}
    
Verify Stock Details Screen
    [Arguments]  ${stockLink}
    Wait For Element Visibility  ${stockLink}
    Click Element  ${stockLink}
    Wait For Element Visibility  ${KU_W_invest_stocksDetails_stockName}
    Verify Page Contains Element  ${KU_W_invest_stocksDetails_stockName}
    Verify Explore Tags For Stocks And USStocks  ${KU_W_invest_stocks_sortYear}
    Wait For Element Visibility  ${KU_W_invest_stocks_currentMarketPrice}
    Verify Page Contains Element  ${KU_W_invest_stocks_currentMarketPrice}
    Sleep  2s
    Verify Page Contains Element  ${KU_W_invest_stocks_change%}
    Verify Page Contains Element  ${KU_W_invest_stocks_timeStamp} 
    Verify Page Contains Element  ${KU_W_invest_stocks_currentGainLoss%}
    Verify Share PDF And Watchlist Option  ${KU_W_invest_stocks_shareIcon}  ${KU_W_invest_stocks_sharePopup}  ${KU_W_invest_stocks_pdfIcon}  ${KU_W_invest_stocks_watchlistIcon}
    # Buy Stocks Button
    Wait For Element Visibility  ${KU_W_invest_stocks_buyStocksBtn}
    Verify Element And Text  ${KU_W_invest_stocks_buyStocksBtn}  ${e_invest_stocks_buyStocksBtn}
    Wait For Element Visibility  ${KU_W_invest_stocks_buyStocksBtn} 
    Click Element  ${KU_W_invest_stocks_buyStocksBtn} 
    Verify Login Page
    # FAQ
    Wait For Element Visibility  ${KU_W_faqbot_icon}
    Verify Presence Of FAQBOT Icon
    # Graph Section
    Verify Performance Chart For Stocks And Crypto  ${KU_W_invest_stocks_crypto_performanceChart}
    # Live Market Hours is pending
    # Compare with other Stocks
    Verify Compare With Other 
    Verify Add Option  ${KU_W_invest_stocks_addBtn}  ${KU_W_invest_stocks_popupHeader}  ${KU_W_invest_stocks_closePopup}
    # Financial Charts
    Verify Financial Performace Chart
    # Top Institutional Holders
    Verify Page Contains Element  ${KU_W_invest_stocks_institutionalHolders}
    Verify Element And Text  ${KU_W_invest_stocks_institutionalHolders}  ${e_invest_stocks_institutionalHolders}
    Verify Page Contains Element  ${KU_W_invest_stocks_institutionalHoldersTable}
    # Top Mutual Fund Holders
    Verify Page Contains Element  ${KU_W_invest_stocks_mfHolders}
    Verify Element And Text  ${KU_W_invest_stocks_mfHolders}  ${e_invest_stocks_mfHolders}
    Verify Page Contains Element  ${KU_W_invest_stocks_mfHoldersTable}
    # Adani Group
    Scroll Untill View  ${KU_W_invest_stocks_adaniGroupHeader}
    Verify Page Contains Element  ${KU_W_invest_stocks_adaniGroupHeader}
    Verify Page Contains Element  ${KU_W_invest_stocks_adaniGroupDesc}
    # Company Address
    Verify Page Contains Element  ${KU_W_invest_stocks_companyAddressHeader}
    Verify Page Contains Element  ${KU_W_invest_stocks_companyAddress}
    # Company URL
    Verify Page Contains Element  ${KU_W_invest_stocks_companyURLHeader}
    Verify Page Contains Element  ${KU_W_invest_stocks_companyURL} 
    Click Element  ${KU_W_invest_stocks_companyURL} 
    Switch To Window
    Reload Page
    Go Back

Verify Cash Flow Chart
    Wait For Element Visibility  ${KU_W_invest_stocks_noQuaterlyData}
    Verify Element And Text  ${KU_W_invest_stocks_noQuaterlyData}  ${e_invest_stocks_noDataMsg}
    Wait For Element Visibility  ${KU_W_invest_stocks_annualSwitch}
    Click Element  ${KU_W_invest_stocks_annualSwitch}
    Verify Page Contains Element  ${KU_W_invest_stocks_financialsChart}
    
Verify Financial Performace Chart
    Scroll Untill View  ${KU_W_invest_stocks_financialsChart}
    Wait For Element Visibility  ${KU_W_invest_stocks_incomeStatement}
    Verify Element And Text  ${KU_W_invest_stocks_incomeStatement}  ${e_invest_stocks_incomeStatement}
    Verify Page Contains Element  ${KU_W_invest_stocks_toggleButton}
    Wait For Element Visibility  ${KU_W_invest_stocks_financialsChart}
    Verify Page Contains Element  ${KU_W_invest_stocks_financialsChart}
    Click Element  ${KU_W_invest_stocks_toggleButton}
    Verify Page Contains Element  ${KU_W_invest_stocks_financialsChart}
    Click Element  ${KU_W_invest_stocks_balanceSheet}
    Verify Element And Text  ${KU_W_invest_stocks_balanceSheet}  ${e_invest_stocks_balanceSheet}
    Wait For Element Visibility  ${KU_W_invest_stocks_financialsChart}
    Verify Page Contains Element  ${KU_W_invest_stocks_financialsChart}
    Click Element  ${KU_W_invest_stocks_toggleButton}
    Verify Page Contains Element  ${KU_W_invest_stocks_financialsChart}
    Click Element  ${KU_W_invest_stocks_cashFlow}
    Verify Element And Text  ${KU_W_invest_stocks_cashFlow}  ${e_invest_stocks_cashFlow} 
    Wait For Element Visibility  ${KU_W_invest_stocks_financialsChart}
    Verify Page Contains Element  ${KU_W_invest_stocks_financialsChart}
    Click Element  ${KU_W_invest_stocks_toggleButton}
    ${chartCount} =  Get Element Count  ${KU_W_invest_stocks_financialsChart}
    Run Keyword If  ${chartCount}>0  Verify Page Contains Element  ${KU_W_invest_stocks_financialsChart}
    ...    ELSE IF  ${chartCount}==0  Verify Cash Flow Chart 