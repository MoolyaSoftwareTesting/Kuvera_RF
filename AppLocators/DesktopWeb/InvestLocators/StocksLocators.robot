*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Stocks
${e_invest_stocks_searchLabel} =  Search stocks
${e_invest_stocks_sortYear} =  1Y            
${e_invest_stocks_basicMaterialFilter} =  Basic Materials
${e_invest_stocks_searchStock} =  Dha
${e_invest_stocks_randomSearchStock} =  Stock123666666
${e_invest_stocks_buyStocksBtn} =  Buy stocks
${e_invest_stocks_incomeStatement} =  Income statement
${e_invest_stocks_balanceSheet} =  Balance sheet 
${e_invest_stocks_cashFlow} =  Cash flow 
${e_invest_stocks_noDataMsg} =  No Quarterly data available
${e_invest_stocks_institutionalHolders} =  Top institutional holders
${e_invest_stocks_mfHolders} =  Top mutual fund holders
        
# Application Locator 'KU_<locatorName>'
# Stocks Navigation Page
# Stocks
${KU_W_invest_stocks_searchLabel} =  xpath=(//div[@class='b-explore-stock__action-title'])[1]
${KU_W_invest_stocks_searchBar} =  xpath=//div[@class='b-search-stock__bar']
${KU_W_invest_stocks_sortLabel} =  xpath=(//div[@class='b-explore-stock__action-title'])[2]
${KU_W_invest_stocks_sortYear} =  xpath=//div[@class='standard-select-container b-fund-sort-wrapper b-stock-holdings-row-d__sort-by']
${KU_W_invest_stocks_stockPrice} =  xpath=(//div[@class='b-stocks-explore__content-key-value-wrapper'])[1]
${KU_W_invest_stocks_filteredTag} =  xpath=(//div[@class='b-stocks-explore__stock-row-content-industry-wrapper'])[1]
${KU_W_invest_stocks_fundSortVal1D} =  xpath=(//div[@class='b-stocks-explore__content-info-key'])[5]
${KU_W_invest_stocks_fundSortVal1Y} =  xpath=(//div[@class='b-stocks-explore__content-info-key'])[6]
${KU_W_invest_stocks_fundSortMarketCap} =  xpath=(//div[@class='b-stocks-explore__content-info-key '])[2]
${KU_W_invest_stocks_defaultFilter} =  xpath=//div[@class='b-filter-stock__box-sector']
${KU_W_invest_stocks_basicMaterialFilter} =  xpath=//div[contains(text(),'Basic Materials')]
${KU_W_invest_stocks_clearAll} =  xpath=//div[@class='b-explore-stock__clear-all']
${KU_W_invest_stocks_stockName} =  xpath=(//div[@class='b-stocks-explore__name-wrapper'])[1]
${KU_W_invest_stocks_stockLink} =  xpath=(//div[@class='b-stocks-explore__name-wrapper'])/a[1]
${KU_W_invest_stocks_clearSearchItem} =  xpath=//div[@class='b-search-stock__clear']
${KU_W_invest_stocks_searchField} =  xpath=//input[@class='b-search-stock__text-field']
${KU_W_invest_stocks_noSearchResult} =  xpath=//div[@class='b-stocks-search-no-results-found--text disable-browser-text-select']
${KU_W_invest_stocks_noSearchResultImg} =  xpath=//img[@class='b-stocks-search-no-results-found--img']
${KU_W_invest_stocks_currentMarketPrice} =  xpath=//div[@class='b-stocks-basic-info__price']
${KU_W_invest_stocks_change%} =  xpath=//div[contains(@class,'b-stocks-basic-info__return b-stocks-basic-info')]
${KU_W_invest_stocks_timeStamp} =  xpath=//div[@class='b-stocks-basic-info__timestamp']
${KU_W_invest_stocks_currentGainLoss%} =  xpath=//div[contains(@class,'b-stock-performance-chart__xirr')]
${KU_W_invest_stocks_shareIcon} =  xpath=//div[@class='b-stocks-basic-info__share-icon--desktop']
${KU_W_invest_stocks_pdfIcon} =  xpath=(//img[@class='b-stocks-basic-info__action-icons'])[3]
${KU_W_invest_stocks_watchlistIcon} =  xpath=(//img[@class='b-stocks-basic-info__action-icons'])[4]
${KU_W_invest_stocks_buyStocksBtn} =  xpath=//div[@class='b-stocks-widget__content--button']
${KU_W_invest_stocks_periodList} =  xpath=(//div[contains(@class,'b-period-option_item')])
${KU_W_invest_stocksDetails_stockName} =  xpath=//div[@class='b-stocks-basic-info__header--name']
${KU_W_invest_stocks_incomeStatement} =  xpath=//div[contains(text(),'Income statement')]
${KU_W_invest_stocks_financialsChart} =  xpath=(//div[@class='highcharts-container '])[2]
${KU_W_invest_stocks_balanceSheet} =  xpath=//div[contains(text(),'Balance sheet')]
${KU_W_invest_stocks_toggleButton} =  xpath=//div[@class='b-standard-switch__slider__round b-stock-fin-chart__slider-ball']
${KU_W_invest_stocks_cashFlow} =  xpath=//div[contains(text(),'Cash flow')]
${KU_W_invest_stocks_annualSwitch} =  xpath=//div[@class='b-stock-fin-chart__no-data__link disable-browser-text-select']
${KU_W_invest_stocks_noQuaterlyData} =  xpath=//div[@class='b-stock-fin-chart__no-data__text']
${KU_W_invest_stocks_adaniGroupHeader} =  xpath=//div[@class='b-stocks-about-heading']
${KU_W_invest_stocks_adaniGroupDesc} =  xpath=//div[@class='b-stocks-about-detail']
${KU_W_invest_stocks_companyAddressHeader} =  xpath=//div[contains(text(),'Company address')]
${KU_W_invest_stocks_companyAddress} =  xpath=//div[@class='b-stocks-about-address']
${KU_W_invest_stocks_companyURLHeader} =  xpath=//div[contains(text(),'Company URL')]
${KU_W_invest_stocks_companyURL} =  xpath=//a[@class='b-stocks-about-url']
${KU_W_invest_stocks_institutionalHolders} =  xpath=(//div[@class='b-stocks-table-heading'])[1]
${KU_W_invest_stocks_institutionalHoldersTable} =  xpath=(//div[@class='b-stocks-table-container'])[1]
${KU_W_invest_stocks_mfHolders} =  xpath=(//div[@class='b-stocks-table-heading'])[2]
${KU_W_invest_stocks_mfHoldersTable} =  xpath=(//div[@class='b-stocks-table-container'])[2]
${KU_W_invest_stocks_addBtn} =  xpath=//div[@class='b-stock-compare-m__add-label']
${KU_W_invest_stocks_popupHeader} =  xpath=//div[@class='b-add-stock-m__heading']
${KU_W_invest_stocks_closePopup} =  xpath=//img[@class='b-add-stock-m__close']
${KU_W_invest_stocks_sharePopup} =  xpath=//div[@class='b-stocks-info__share-popup-text']