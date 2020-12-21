*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Stocks Landing Page
    Log To Console  Stocks
    Scroll Untill View  ${KU_W_stocks}
    Sleep  4s
    Wait For Element Visibility  ${KU_W_stocks}
    Verify Element And Text  ${KU_W_stocks}  ${e_invest_stocks_titleText}
    Wait For Element Visibility  ${KU_W_stocks}
    Click Element  ${KU_W_stocks}
    Wait For Element Visibility  ${KU_W_invest_stocks_searchLabel}
    Verify Element And Text  ${KU_W_invest_stocks_searchLabel}  ${e_invest_stocks_screenLabel}
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_stocktopgainerindia_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_stocktopgainerindia_searchTextField}  ${KU_W_invest_sort_topGainerAndIndia}
    Verify Element And Text  ${KU_W_invest_stocks_sortYear}  ${e_invest_stocks_sortYear}
    Verify Page Contains Element  ${KU_W_invest_stocks_fundPrice}
    Verify Page Contains Element  ${KU_W_invest_stocks_filteredTag}
    Verify Sort Duration List
    Verify Filter
    Verify Search Stocks
    Wait For Element Visibility  ${KU_W_faqbot_icon}
    Run Keyword If  "${ENV}" == "prod"  Verify Page Contains Element  ${KU_W_faqbot_icon}
    ...  ELSE  Log To Console  Staging
    Verify Filter Navigation For Stocks TopGainer and 52 WkHighIndia  ${KU_W_invest_stocks_topGainerAndIndia_watchListHeader}  ${e_invest_stocks_watchlistHeader}   ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}
    Click Element  ${KU_W_stocks}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}
    Verify Watchlist Icon  ${KU_W_invest_stocks_topGainerAndIndia_watchListBtn}  
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
    Wait For Element Visibility  ${KU_W_invest_stocktopgainerindia_searchTextField}
    Click Element  ${KU_W_invest_stocktopgainerindia_searchTextField}
    Input Text  ${KU_W_invest_stocks_searchField}  ${stockName}  clear=true
    Press Enter Key  ${KU_W_invest_stocks_searchField}
    Sleep  3s

Verify Sort Duration List
    Verify Page Contains Element  ${KU_W_invest_stocks_fundSortVal1D}
    Verify Page Contains Element  ${KU_W_invest_stocks_fundSortVal1Y}
    Verify Page Contains Element  ${KU_W_invest_stocks_fundSortMarketCap}

Verify Filter
    Verify Element And Text  ${KU_W_invest_stocks_defaultFilter}  ${e_invest_stocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_stocks_defaultFilter}
    Click Element  ${KU_W_invest_stocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_stocks_basicMaterialFilter}
    Click Element  ${KU_W_invest_stocks_basicMaterialFilter}
    Verify Element And Text  ${KU_W_invest_stocks_defaultFilter}  ${e_invest_stocks_basicMaterialFilter}
    Click Element  ${KU_W_invest_stocks_clearAll}
    Verify Element And Text  ${KU_W_invest_stocks_defaultFilter}  ${e_invest_stocks_defaultFilter}

Verify Search Stocks
    Wait For Element Visibility  ${KU_W_invest_stocktopgainerindia_searchTextField}
    Click Element  ${KU_W_invest_stocktopgainerindia_searchTextField}
    Wait For Element Visibility  ${KU_W_invest_stocks_searchField}
    Input Text  ${KU_W_invest_stocks_searchField}  ${e_invest_stocks_searchFund}
    Wait For Element Visibility  ${KU_W_invest_stocks_stockName}
    Verify Page Contains Element  ${KU_W_invest_stocks_stockName}
    Wait For Element Visibility  ${KU_W_invest_stocks_clearSearchItem}
    Click Element  ${KU_W_invest_stocks_clearSearchItem}
    Wait For Element Visibility  ${KU_W_invest_stocks_searchField}
    Input Text  ${KU_W_invest_stocks_searchField}  ${e_invest_stocks_randomSearchFund}  clear=true
    Press Enter Key  ${KU_W_invest_stocks_searchField}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_stocks_noSearchResult}
    Verify Page Contains Element  ${KU_W_invest_stocks_noSearchResult}
    Wait For Element Visibility  ${KU_W_invest_stocks_noSearchResultImg}
    Verify Page Contains Image  ${KU_W_invest_stocks_noSearchResultImg}

Verify Stock Details Screen
    [Arguments]  ${stockLink}
    Wait For Element Visibility  ${stockLink}
    Click Element  ${stockLink}
    Wait For Element Visibility  ${KU_W_invest_stocksDetails_stockName}
    Verify Page Contains Element  ${KU_W_invest_stocksDetails_stockName}
    Verify Page Contains Element  ${KU_W_invest_stocks_exploreTags}
    Click Element  ${KU_W_invest_stocks_exploreTagLink1} 
    Verify Element And Text  ${KU_W_invest_stocks_sortYear}  ${e_invest_stocks_sortYear}
    Go Back
    Wait For Element Visibility  ${KU_W_invest_stocks_exploreTagLink2}
    Click Element  ${KU_W_invest_stocks_exploreTagLink2}
    Verify Element And Text  ${KU_W_invest_stocks_sortYear}  ${e_invest_stocks_sortYear}
    Go Back
    Wait For Element Visibility  ${KU_W_invest_stocks_currentMarketPrice}
    Verify Page Contains Element  ${KU_W_invest_stocks_currentMarketPrice}
    Sleep  2s
    Verify Page Contains Element  ${KU_W_invest_stocks_change%}
    Verify Page Contains Element  ${KU_W_invest_stocks_timeStamp} 
    Verify Page Contains Element  ${KU_W_invest_stocks_currentGainLoss%}
    Verify Page Contains Element  ${KU_W_invest_stocks_shareIcon}
    Verify Page Contains Element  ${KU_W_invest_stocks_pdfIcon}
    Verify Page Contains Element  ${KU_W_invest_stocks_watchlistIcon}
    # Buy Stocks Button
    Verify Element And Text  ${KU_W_invest_stocks_buyStocksBtn}  ${e_invest_stocks_buyStocksBtn}
    Click Element  ${KU_W_invest_stocks_buyStocksBtn} 
    Verify Login Page
    # FAQ
    Wait For Element Visibility  ${KU_W_faqbot_icon}
    Run Keyword If  "${ENV}" == "prod"  Verify Page Contains Element  ${KU_W_faqbot_icon}
    ...  ELSE  Log To Console  Staging
    # Graph Section
    Wait For Element Visibility  ${KU_W_invest_stocks_performanceChart} 
    Verify Page Contains Element  ${KU_W_invest_stocks_performanceChart}
    Scroll Untill View  ${KU_W_invest_stocks_performancePeriod} 
    Verify Page Contains Element  ${KU_W_invest_stocks_performancePeriod}
    ${periodlist} =  Get Element Count  xpath=(//div[contains(@class,'b-period-option_item')])
    FOR  ${i}  IN RANGE  1  ${periodlist}+1
        Sleep  2s
        Click Element  xpath=(//div[contains(@class,'b-period-option_item')])[${i}]
        Wait For Element Visibility  ${KU_W_invest_stocks_performanceChart}
        Verify Page Contains Element  ${KU_W_invest_stocks_performanceChart}
    END
    # Live Market Hours is pending
    # Compare with other Stocks
    ${comparePeriodlist} =  Get Element Count  xpath=//img[@class='b-app-standard-table__sort b-app-standard-table__sort--asc']
    FOR  ${i}  IN RANGE  1  ${comparePeriodlist}+1
        Sleep  2s
        Verify Page Contains Image  xpath=(//img[@class='b-app-standard-table__sort b-app-standard-table__sort--asc'])[${i}]
        Click Element  xpath=(//img[@class='b-app-standard-table__sort b-app-standard-table__sort--asc'])[${i}]
        Verify Page Contains Element  xpath=(//div[@class='b-app-standard-table__column-data'])[${i}+1]
        Verify Page Contains Image  xpath=(//img[@class='b-app-standard-table__sort b-app-standard-table__sort--desc'])[${i}]
        Click Element  xpath=(//img[@class='b-app-standard-table__sort b-app-standard-table__sort--desc'])[${i}]
        Verify Page Contains Element  xpath=(//div[@class='b-app-standard-table__column-data'])[${i}+1]
    END

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
    Click Element  ${KU_W_invest_stocks_annualSwitch}
    Verify Page Contains Element  ${KU_W_invest_stocks_financialsChart}
    
Verify Financial Performace Chart
    Scroll Untill View  ${KU_W_invest_stocks_incomeStatement}
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