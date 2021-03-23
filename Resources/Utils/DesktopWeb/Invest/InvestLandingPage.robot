*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Invest Tiles
    Wait For Element Visibility  ${KU_W_investLink} 
    Click Element  ${KU_W_investLink}
    Sleep  1s
    Verify Login And Signup Link
    # Save Smart
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_saveSmartTitle}  
    Verify Element And Text  ${KU_W_invest_saveSmartTitle}  ${e_invest_saveSmartTitleText}
    Verify Element And Text  ${KU_W_invest_saveSmartSubTitle}  ${e_invest_saveSmartSubText}
    Wait For Element Visibility  ${KU_W_invest_saveSmartTitle}
    Click Element  ${KU_W_invest_saveSmartTitle}
    Log To Console  Save Smart Tiles
    Sleep  2s
    Wait For Element Visibility   ${KU_W_ss_screenTitle}
    Verify Element And Text  ${KU_W_ss_screenTitle}  ${e_invest_ss_screenText}
    Go Back
    #FD
    Wait For Element Visibility  ${KU_W_FDTitle}
    Verify Element And Text  ${KU_W_FDTitle}  ${e_invest_FDTitle} 
    Verify Element And Text  ${KU_W_FDSubTitle}  ${e_invest_FDSubTitle}
    Verify PreLogin FD Landing Page
    # Gilt Funds
    Wait For Element Visibility  ${KU_W_giltFundsTitle} 
    Verify Element And Text  ${KU_W_giltFundsTitle}  ${e_invest_giltFundsTitleText}
    Verify Element And Text  ${KU_W_giltFundsSubTitle}  ${e_invest_giltFundsSubText}
    Verify PreLogin Gilt Funds Landing Page
    # Ultra-Short
    Wait For Element Visibility  ${KU_W_ultraShortTitle} 
    Verify Element And Text  ${KU_W_ultraShortTitle}  ${e_invest_ultraShortTitleText}
    Verify Element And Text  ${KU_W_ultraShortSubTitle}  ${e_invest_ultraShortSubText}
    Verify PreLogin Ultra Short Landing Page
    # Bank & PSU Bonds
    Wait For Element Visibility  ${KU_W_bank&PSUBondsTitle} 
    Verify Element And Text  ${KU_W_bank&PSUBondsTitle}  ${e_invest_bank&PSUTitleText}
    Verify PreLogin Bank And PSU Bonds Landing Page
    # ELSS Tax Saver
    Wait For Element Visibility  ${KU_W_ELSSTaxSaverTitle}
    Verify Element And Text  ${KU_W_ELSSTaxSaverTitle}  ${e_invest_ELSSTaxTitleText}
    Verify Element And Text  ${KU_W_ELSSTaxSaverSubTitle}  ${e_invest_ELSSTaxSubText}
    Verify PreLogin ELSS Tax Saver Landing Page
    # Digital Gold
    Wait For Element Visibility  ${KU_W_digitalGoldTitle}
    Verify Element And Text  ${KU_W_digitalGoldTitle}  ${e_invest_digitalGoldTitleText}
    Verify Element And Text  ${KU_W_digitalGoldSubTitle}  ${e_invest_digitalGoldSubText}
    Verify Page Contains Image  ${KU_W_goldIconImage} 
    Click Element  ${KU_W_digitalGoldTitle}
    Log To Console  Digital Gold Tiles
    Wait For Element Visibility  ${KU_W_dg_screenTitle} 
    Verify Element And Text  ${KU_W_dg_screenTitle}  ${e_invest_digiGold_screenText} 
    Go Back
    # US ETF
    Wait For Element Visibility  ${KU_W_UTFTitle}
    Sleep  2s
    Verify Element And Text  ${KU_W_UTFTitle}  ${e_invest_USETFTitleText}
    Verify Element And Text  ${KU_W_UTFSubTitle}  ${e_invest_USETFSubText}
    Verify Page Contains Image   ${KU_W_USUTFImage}  
    Verify PreLogin US ETF Landing Page
    # Equity Index
    Wait For Element Visibility  ${KU_W_equityIndexTitle}
    Verify Element And Text  ${KU_W_equityIndexTitle}  ${e_invest_equityIndexTitleText}
    Verify Element And Text  ${KU_W_equityIndexSubTitle}  ${e_invest_equityIndexSubText} 
    Verify PreLogin Equity Index Landing Page
    # Sector Funds
    Wait For Element Visibility  ${KU_W_sectorFundsTitle}
    Verify Element And Text  ${KU_W_sectorFundsTitle}   ${e_invest_sectorFundsTitleText}
    Verify Element And Text  ${KU_W_sectorFundsSubTitle}  ${e_invest_sectorFundsSubTitleText} 
    Verify PreLogin Sector Funds Landing Page
    # Value Funds
    Wait For Element Visibility  ${KU_W_valueFundsTitle} 
    Verify Element And Text  ${KU_W_valueFundsTitle}  ${e_invest_valueFundsTitleText}
    Verify Element And Text  ${KU_W_valueFundsSubTitle}  ${e_invest_valueFundsSubTitleText}
    Verify PreLogin Value Funds Landing Page
    # Crypto
    Wait For Element Visibility  ${KU_W_cryptoTitle}
    Verify Element And Text  ${KU_W_cryptoTitle}  ${e_invest_cryptoTitleText} 
    Verify Element And Text  ${KU_W_cryptoSubTitle}  ${e_invest_cryptoSubTitleText}
    Wait And Click  ${KU_W_cryptoTitle}
    Log To Console  Crypto Tiles
    Sleep  2s
    Verify Page Contains Element  ${KU_W_crypto_tabName}
    Verify Login And Signup Link
    Go Back
    # 52 W High India
    Wait For Element Visibility  ${KU_W_52WHighIndiaTitle}  
    Verify Element And Text  ${KU_W_52WHighIndiaTitle}  ${e_invest_52WHighIndiaTitleText} 
    Verify Element And Text  ${KU_W_52WHighIndiaSubTitle}  ${e_invest_52WHighIndiaSubTitleText}
    Verify PreLogin 52WkHigh India Landing Page
    # 52 W High USA
    Wait For Element Visibility  ${KU_W_52WHighUSTitle}
    Verify Element And Text  ${KU_W_52WHighUSTitle}  ${e_invest_52WHighUSTitleText} 
    Verify Element And Text  ${KU_W_52WHighUSSubTitle}  ${e_invest_52WHighUSSubTitleText}
    Verify PreLogin 52WkHigh US Landing Page
    # Explore More
    Scroll Untill View  ${KU_W_exploreTitle}
    Verify Element And Text  ${KU_W_exploreTitle}  ${e_invest_stock_exploreTxt}
    

Navigate To Invest Page And Verify Explore Options
    [Arguments]  ${option}  ${optionText}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_investLink} 
    Click Element  ${KU_W_investLink}
    Scroll Page To Location  0  2000
    Verify Element And Text  ${option}  ${optionText}
    Wait Scroll And Click Element  ${option}
    
Verify Watchlist Icon 
    [Arguments]   ${watchlistBtn}
    Wait For Element Visibility  ${watchlistBtn}
    Verify Page Contains Element  ${watchlistBtn} 
    Wait For Element Visibility  ${watchlistBtn} 
    Click Element  ${watchlistBtn}

Verify Search And Sort
    [Arguments]  ${searchBar}  ${searchLabel}  ${searchTextField}  ${sortButton} 
    Verify Element And Text  ${searchBar}  ${searchLabel}
    Verify Page Contains Element  ${searchTextField}
    Verify Element And Text  ${sortButton}  ${e_invest_sortBtnText}

Verify Filter And Clear All        
    Verify Element And Text  ${KU_W_filter}  ${e_invest_filterBtnText}
    Verify Element And Text  ${KU_W_clearAll}  ${e_invest_clearAllBtnTxt}

Verify Filter Navigation For Funds
    # InstaRedeem
    Wait For Element Visibility  ${KU_W_invest_instaRedeem}
    Click Element  ${KU_W_invest_instaRedeem}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_instaRedeem_fundText}
    Verify Element And Text  ${KU_W_invest_instaRedeem_fundText}  ${e_invest__instaredeem_fundText}
    # Save Taxes
    Click Element  ${KU_W_invest_saveTaxes}
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_searchBarText}  ${KU_W_invest_searchTextFieldForFunds}  ${KU_W_invest_sort}
    # Top Rated
    Click Element  ${KU_W_invest_topRated}
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_searchBarText}  ${KU_W_invest_searchTextFieldForFunds}  ${KU_W_invest_sort} 
    # Investor Choice
    Click Element  ${KU_W_invest_investorChoice}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_invest_watchListBtn}
    Verify Page Contains Element  ${KU_W_invest_watchListBtn}
    # New Funds
    Click Element  ${KU_W_invest_newFunds}
    Verify Element And Text  ${KU_W_invest_newfunds_openEndedSwitch}  ${e_invest__newfunds_openSwitchText}
    # Top Searched
    Click Element  ${KU_W_invest_topSearched}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_invest_watchListBtn}
    Verify Page Contains Element  ${KU_W_invest_watchListBtn}
    Go Back

Verify No Stocks Screen For 52WkHighIndia
    [Arguments]   ${watchListBtn}
    Scroll Untill View  ${KU_W_invest_52WLow_noStocksAvailable}
    Wait For Element Visibility  ${KU_W_invest_52WLow_noStocksAvailable}
    Verify Element And Text  ${KU_W_invest_52WLow_noStocksAvailable}  ${e_invest__52WLow_noStocksText}
    Verify Element And Text  ${KU_W_invest_52WHighLow_allStockLink}  ${e_invest__52WLow_allStockLinkText} 
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_52WHighLow_allStockLink}
    Click Element  ${KU_W_invest_52WHighLow_allStockLink}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    Go Back
    Go Back

Verify WatchList Button For 52WkHighIndia
    Verify Page Contains Element  ${KU_W_invest_stocks_52WIndia_watchListBtn}
    Go Back

Verify Filter Navigation For Stocks And 52 WkHighIndia   
    [Arguments]  ${watchListHeader}  ${watchlistHeaderText}  ${sortYearFor52High}  ${watchListBtn}
    # All
    Click Element  ${KU_W_invest_stocks_all}
    Verify Search And Sort  ${KU_W_stockAnd52WIndia_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_stockAndindia_searchTextField}  ${KU_W_invest_sort_52WIndia}
    # WatchList
    Click Element  ${KU_W_invest_watchList}
    Verify Element And Text  ${watchListHeader}  ${watchlistHeaderText} 
    # Gainers
    Click Element  ${KU_W_invest_stocks_gainers}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # Losers
    Click Element  ${KU_W_invest_stocks_losers}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # 52Whigh
    Click Element  ${KU_W_invest_stocks_52WHigh}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${sortYearFor52High}
    Sleep  2s
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # 52Wlow
    Click Element  ${KU_W_invest_stocks_52WLow}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${sortYearFor52High}
    Sleep  3s
    ${fundlist} =  Get Element Count   xpath=//div[@class='b-stocks-explore__stock-row-info']
    Run Keyword If  ${fundlist}>0  Verify WatchList Button For 52WkHighIndia
    ...    ELSE IF  ${fundlist}==0  Verify No Stocks Screen For 52WkHighIndia  ${KU_W_invest_stocks_52WIndia_watchListBtn}
    ...    ELSE  Log To Console  Completed

Verify No Stocks Screen For UTF and 52WkHighUS
    [Arguments]   ${watchListBtn}
    Verify Page Contains Element  ${KU_W_invest_noStocksForUTFAnd52WUS}
    Verify Element And Text  ${KU_W_invest_noStocksForUTFAnd52WUS}  ${e_invest__52WLow_noStocksText}
    Verify Element And Text  ${KU_W_invest_allStockLinkForUTFAnd52WUS}  ${e_invest__USETF_allStockLinkText} 
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_allStockLinkForUTFAnd52WUS}
    Click Element  ${KU_W_invest_allStockLinkForUTFAnd52WUS}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    Go Back

Verify WatchList Button For UTF and 52WkHighUS
    Verify Page Contains Element  ${KU_W_invest_US_SETFAnd52WUS_watchlistBtn} 
    Go Back

Verify Filter Navigation For USStocks USETF and 52WkHighUS  
    [Arguments]  ${watchListHeader}  ${watchlistHeaderText}  ${sortYearFor52High}  ${watchListBtn}
    # All
    Click Element  ${KU_W_invest_stocks_all}
    Verify Search And Sort  ${KU_W_US_SETF52WUS_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_US_SETFAnd52WUS_searchTextField}  ${KU_W_invest_sort_US_S_UTF_USA}
    # WatchList
    Click Element  ${KU_W_invest_watchList}
    Wait For Element Visibility  ${watchListHeader}
    Verify Element And Text  ${watchListHeader}  ${watchlistHeaderText} 
    # Gainers
    Click Element  ${KU_W_invest_stocks_gainers}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # Losers
    Click Element  ${KU_W_invest_stocks_losers}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__stocks_sortYearText}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # 52Whigh
    Click Element  ${KU_W_invest_stocks_52WHigh}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${sortYearFor52High}
    Wait For Element Visibility  ${watchListBtn}
    Verify Page Contains Element  ${watchListBtn}
    # 52Wlow
    Click Element  ${KU_W_invest_stocks_52WLow}
    Verify Element And Text  ${KU_W_invest_sortYear}  ${sortYearFor52High}
    Sleep  3s
    ${fundlist} =  Get Element Count   xpath=//div[@class='b-stock-item b-stock-items__content__item']
    Run Keyword If  ${fundlist}>0  Verify WatchList Button For UTF and 52WkHighUS
    ...    ELSE IF  ${fundlist}==0  Verify No Stocks Screen For UTF and 52WkHighUS  ${KU_W_invest_US_SETFAnd52WUS_watchlistBtn} 
    ...    ELSE  Log To Console  Completed

Verify Explore Tags For Stocks And USStocks
    [Arguments]  ${sortYear}  
    Verify Page Contains Element  ${KU_W_invest_US_stocks_exploreTags}
    Click Element  ${KU_W_invest_US_stocks_exploreTagLink1} 
    Wait For Element Visibility  ${sortYear}
    Verify Element And Text  ${sortYear}  ${e_invest_stocks_sortYear}
    Go Back
    Wait For Element Visibility  ${KU_W_invest_US_stocks_exploreTagLink2}
    Click Element  ${KU_W_invest_US_stocks_exploreTagLink2}
    Wait For Element Visibility  ${sortYear}
    Verify Element And Text  ${sortYear}  ${e_invest_stocks_sortYear}
    Go Back

Verify Performance Chart For Stocks And Crypto
    [Arguments]  ${performanceChart}
    Wait For Element Visibility  ${performanceChart} 
    Verify Page Contains Element  ${performanceChart}
    Scroll Untill View  ${KU_W_invest_US_stocks_performancePeriod}
    Verify Page Contains Element  ${KU_W_invest_US_stocks_performancePeriod}
    ${periodlist} =  Get Element Count  xpath=(//div[contains(@class,'b-period-option_item')])
    FOR  ${i}  IN RANGE  1  ${periodlist}+1
        Sleep  2s
        Click Element  xpath=(//div[contains(@class,'b-period-option_item')])[${i}]
        Wait For Element Visibility  ${performanceChart}
        Verify Page Contains Element  ${performanceChart}
    END

Verify Compare With Other
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

Verify Add Option 
    [Arguments]  ${addBtn}  ${popupHeader}  ${closePopup}
    Scroll Untill View  ${addBtn}
    Verify Page Contains Element  ${addBtn}
    Wait For Element Visibility  ${addBtn}
    Click Element  ${addBtn}
    Verify Page Contains Element  ${popupHeader}
    Click Element  ${closePopup}

Verify Share PDF And Watchlist Option
    [Arguments]  ${shareIcon}  ${sharePopup}  ${PDFIcon}  ${watchlistIcon}
    Verify Page Contains Element  ${shareIcon}
    Wait For Element Visibility  ${shareIcon}
    Click Element  ${shareIcon}
    Wait For Element Visibility  ${sharePopup}
    Verify Page Contains Element  ${sharePopup}
    Verify Page Contains Element  ${PDFIcon}
    Click Element  ${PDFIcon}
    Verify Page Contains Element  ${watchlistIcon}
    Click Element  ${watchlistIcon}
    Verify Login Page