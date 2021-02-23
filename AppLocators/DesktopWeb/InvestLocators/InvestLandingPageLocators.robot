*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Invest
${e_invest_saveSmartTitleText} =   SaveSmart
${e_invest_saveSmartSubText} =  Invest in low risk liquid funds and redeem upto ₹2 lakhs instantly
${e_invest_FDTitle} =  FD
${e_invest_FDSubTitle} =  India's favorite saving instrument
${e_invest_giltFundsTitleText} =   Gilt funds
${e_invest_giltFundsSubText} =  Invest in govt bonds. Zero credit risk, but have rate risk.
${e_invest_ultraShortTitleText} =  Ultra-short
${e_invest_ultraShortSubText} =  Park money for the short term
${e_invest_bank&PSUTitleText} =  Bank & PSU bonds
${e_invest_ELSSTaxTitleText} =   ELSS tax saver
${e_invest_ELSSTaxSubText} =  Save up to ₹46.8k in taxes.
${e_invest_digitalGoldTitleText} =  Digital gold
${e_invest_digitalGoldSubText} =  Diversify your portfolio with Gold.
${e_invest_USETFTitleText} =   US ETF
${e_invest_USETFSubText} =  Go global with direct US ETF investing. We make it easy and cheap.
${e_invest_equityIndexTitleText} =  Equity index
${e_invest_equityIndexSubText} =  Get index returns at low cost. 
${e_invest_sectorFundsTitleText} =   Sector funds 
${e_invest_sectorFundsSubTitleText} =  Pharma, Tech & more
${e_invest_valueFundsTitleText} =   Value funds
${e_invest_valueFundsSubTitleText} =  Invest in stocks selling below their intrinsic or book value.
${e_invest_cryptoTitleText} =   Crypto
${e_invest_cryptoSubTitleText} =  BTC, ETH et al. Join the crypto revolution
${e_invest_52WHighIndiaTitleText} =   52 wk high India
${e_invest_52WHighIndiaSubTitleText} =  Momentum stocks in India
${e_invest_52WHighIndiaUS_screenText} =   52W high 
${e_invest_52WHighUSTitleText} =   52 wk high US
${e_invest_52WHighUSSubTitleText} =  Momentum stocks in US
${e_invest_healthPremiumTitleText} =  Get ₹50L health cover starting at ₹900 p.m. T&C apply
${e_invest_checkPremiumSubText} =  Check premium     
${e_invest_mf_titleText} =  MF
${e_invest_searchBarText} =  Search funds 
${e_invest_digGold} =  Digi gold
${e_invest_stocks} =  Stocks
${e_invest_stocks_screenText} =  Search stocks
${e_invest_USStocks} =  US stocks
${e_invest_saveSmart} =   SaveSmart
${e_invest_amazonSave_screenText} =  4 simple steps to qualify for 3% extra for your shopping on Amazon.in
${e_invest_sortBtnText} =  Sort by				
${e_invest_filterBtnText} =  Filter
${e_invest_clearAllBtnTxt} =  Clear all
${e_invest_stock_searchBarTxt} =  Search stocks
${e_invest_stock_exploreTxt} =  Explore
${e_invest__funds_sortYearText} =  3Y
${e_invest__stocks_sortYearText} =  1D
${e_invest__52WHighLow_UTF_sortYearText} =  1Y
${e_invest__52WLow_noStocksText} =  No stocks available  
${e_invest__52WLow_allStockLinkText} =  Go to ‘All stocks’ 
${e_invest__USETF_allStockLinkText} =  Go to “All stocks”                    
${e_invest__instaredeem_fundText} =  Liquid Fund
${e_invest__newfunds_openSwitchText} =  Open Ended
${e_invest_watchlistHeader} =  Login to track your favorite funds by adding them to your watch list.	
${e_invest_stocks_watchlistHeader} =  Login to track your favorite stocks by adding them to your watch list.	
${e_invest_USStocksUSETFAnd52WUS_watchlistHeader} =  Track your favorite stocks by adding them to your watch list.
${e_invest_US_stocks_defaultFilter} =  Sector    
	
# Application Locator 'KU_<locatorName>'
# Invest Landing Navigation Page
${KU_W_investLink} =  xpath=//a[contains(text(),'Invest')]
${KU_W_invest_saveSmartTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[1]
${KU_W_invest_saveSmartSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[1]
${KU_W_FDTitle} =  xpath=//h6[contains(text(),'FD')]
${KU_W_FDSubTitle} =  xpath=(//p[@class='b-invest-tile__para'])[2]
${KU_W_giltFundsTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[3]
${KU_W_giltFundsSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[3]
${KU_W_ultraShortTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[2]
${KU_W_ultraShortSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[2]
${KU_W_bank&PSUBondsTitle} =  xpath=(//h6[@class='b-invest-tile__title'])[4]
${KU_W_ELSSTaxSaverTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[4]
${KU_W_ELSSTaxSaverSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[4]
${KU_W_digitalGoldTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[5]
${KU_W_digitalGoldSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[5]
${KU_W_goldIconImage} =  xpath=(//div[@class='k-cls b-invest-card']/img)[2]
${KU_W_USUTFImage} =  xpath=(//div[@class='k-cls b-invest-card']/img)[3]
${KU_W_UTFTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[6]
${KU_W_UTFSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[6]
${KU_W_equityIndexTitle} =  xpath=(//h6[@class='b-invest-tile__title'])[6]
${KU_W_equityIndexSubTitle} =  xpath=(//p[@class='b-invest-tile__para'])[7]
${KU_W_sectorFundsTitle} =  xpath=(//h6[@class='b-invest-tile__title'])[7]
${KU_W_sectorFundsSubTitle} =  xpath=(//p[@class='b-invest-tile__para'])[9]
${KU_W_cryptoTitle} =  xpath=//h6[contains(text(),'Crypto')]
${KU_W_cryptoSubTitle} =  xpath=(//p[@class='b-invest-tile__para'])[10]
${KU_W_valueFundsTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[8]
${KU_W_valueFundsSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[8]
${KU_W_52WHighIndiaTitle} =  xpath=(//h6[@class='b-invest-tile__title'])[10]
${KU_W_52WHighIndiaSubTitle} =  xpath=(//p[@class='b-invest-tile__para'])[12]
${KU_W_52WHighIndia_screenText} =   xpath=//div[@class='b-stocks-explore__tab-wrapper disable-browser-text-select']//div[5]
${KU_W_52WHighUSTitle} =  xpath=(//div[@class='k-cls b-invest-card']/h6)[9]
${KU_W_52WHighUSSubTitle} =  xpath=(//div[@class='k-cls b-invest-card']/p)[9]
${KU_W_52WHighUS_screenText} =  xpath=//div[@class='disable-browser-text-select b-standard-tab__item b-standard-tab__item--active b-standard-tab__item--52-week-high']
${KU_W_healthPremiumTitle} =  xpath=//div[@class='b-invest-landing__other-container']//div[1]/p
${KU_W_checkPremiumBtn} =  xpath=//h6[contains(.,'Check premium')]
${KU_W_mutualFund} =  xpath=//div[contains(text(),'MF')]
${KU_W_mutualFundScreen} =  xpath=(//div[@class='b-explore-fund__action-title'])[1]
${KU_W_digitalGold} =  xpath=//div[contains(text(),'Digi gold')]
${KU_W_digitalGoldScreen} =  xpath=(//div[@class='b-asset-cta__title'])[3]
${KU_W_stocks} =  xpath=(//*[contains(text(),'Stocks')])[2]
${KU_W_stocksScreen} =  xpath=(//div[@class='b-explore-stock__action-title'])[1]
${KU_W_USStocks} =  xpath=//div[contains(text(),'US stocks')]  
${KU_W_saveSmart} =  xpath=//div[contains(text(),'SaveSmart')]
${KU_W_amazonSaveScreen} =  xpath=//div[@class='b-festive-fund-no-investment__text']
${KU_W_invest_sortYear} =  xpath=//div[@class='default-message']
${KU_W_stockAnd52WIndia_searchBar} =  xpath=(//div[@class='b-explore-stock__action-title'])[1]
${KU_W_US_SETF52WUS_searchBar} =  xpath=(//div[@class='b-action-bar__search__header'])[1]
${KU_W_invest_searchTextFieldForFunds} =  xpath=//div[@class='b-search-fund__bar']
${KU_W_invest_US_SETFAnd52WUS_searchTextField} =  xpath=//div[@class='b-action-bar__search__item']
${KU_W_invest_stockAndindia_searchTextField} =  xpath=//div[@class='b-search-stock__bar']
${KU_W_invest_sort} =  xpath=(//div[@class='b-explore-fund__action-title'])[2]
${KU_W_invest_sort_US_S_UTF_USA} =  xpath=//div[@class='b-action-bar__sort__header']
${KU_W_invest_sort_52WIndia} =  xpath=(//div[@class='b-explore-stock__action-title'])[2]
${KU_W_filter} =  xpath=//span[@class='b-explore-fund__action-title b-explore-fund__filter-action-title']
${KU_W_filterText_52WIndia} =  xpath=//span[@class='b-explore-stock__action-title b-explore-stock__filter-action-title']
${KU_W_filterText_UTFAnd52WkHighUS} =  xpath=//div[@class='b-action-bar__filter__header__label']
${KU_W_clearAll} =  xpath=//div[@class='b-explore-fund__clear-all']
${KU_W_exploreTitle} =  xpath=//div[contains(text(),'Explore')]
${KU_W_invest_filteredFund} =  xpath=(//div[@class='b-mutual-funds-explore__fund-row-industry'])[1]
${KU_W_invest_watchListBtn} =  xpath=(//div[@class='b-mutual-funds-explore__fund-row-watchlist'])[1]
${KU_W_invest_watchlistHeader} =  xpath=//div[@class='b-mutual-funds-watchlist-tab__not-logged-in--text']
${KU_W_invest_watchlist_signupBtn} =  xpath=//div[@class='b-mutual-funds-watchlist-tab__not-logged-in--signup']
${KU_W_invest_instaRedeem} =  xpath=//div[contains(text(),'Insta redeem')]
${KU_W_invest_saveTaxes} =  xpath=//div[contains(text(),'Save taxes')]
${KU_W_invest_topRated} =  xpath=//div[contains(text(),'Top rated')]
${KU_W_invest_investorChoice} =  xpath=//div[contains(text(),'Investor choice')]
${KU_W_invest_newFunds} =  xpath=//div[contains(text(),'New funds')]
${KU_W_invest_topSearched} =  xpath=//div[contains(text(),'Top searched')]
${KU_W_invest_watchList} =  xpath=//div[contains(text(),'Watchlist')]
${KU_W_invest_watchlist_loginBtn} =  xpath=//button[contains(.,'Login')]
${KU_W_invest_instaRedeem_fundText} =  xpath=//div[contains(text(),'Liquid Fund')]
${KU_W_invest_fundsScreenTitle} =  xpath=(//div[@class='b-mutual-funds-explore__fund-row-content-industry-wrapper']/div[3])[1]
${KU_W_invest_newfunds_openEndedSwitch} =  xpath=(//div[@class='b-standard-switch__label b-standard-switch__label--selected'])[2]
${KU_W_invest_stocks_all} =  xpath=//div[contains(text(),'All')]
${KU_W_invest_stocks_losers} =  xpath=//div[contains(text(),'Losers')]
${KU_W_invest_stocks_gainers} =  xpath=//div[contains(text(),'Gainers')]
${KU_W_invest_stocks_52WHigh} =  xpath=//div[contains(text(),'52W high')]
${KU_W_invest_stocks_52WLow} =  xpath=//div[contains(text(),'52W low')]
${KU_W_invest_52WLow_noStocksAvailable} =  xpath=//div[@class='b-stocks-filter-no-results-found disable-browser-text-select']
${KU_W_invest_stocks_52WIndia_watchListBtn} =  xpath=(//div[@class='b-stocks-explore__stock-row-watchlist'])[1]
${KU_W_invest_stocks_52WIndia_watchListHeader} =  xpath=//div[@class='b-stock-watchlist-tab__not-logged-in--text']
${KU_W_invest_52WHighLow_allStockLink} =  xpath=//div[@class='b-stocks-filter__redirect-link disable-browser-text-select']
${KU_W_invest_US_SETFAnd52WUS_watchlistBtn} =  xpath=(//img[contains(@class,'b-stock-item')])[1]
${KU_W_invest_US_SETFAnd52WUS_watchListHeader} =  xpath=//div[@class='b-stock-items__watchlist-banner__track-msg']
${KU_W_invest_noStocksForUTFAnd52WUS} =  xpath=//div[@class='b-zero-item__label']
${KU_W_invest_allStockLinkForUTFAnd52WUS} =  xpath=//div[@class='b-zero-item__btn']
${KU_W_invest_US_stocks_exploreTags} =  xpath=//div[@class='b-explore-tags__container']
${KU_W_invest_US_stocks_exploreTagLink1} =  xpath=(//a[@class='b-app-standard-chip disable-browser-text-select b-explore-tags__chip'])[1]
${KU_W_invest_US_stocks_exploreTagLink2} =  xpath=(//a[@class='b-app-standard-chip disable-browser-text-select b-explore-tags__chip'])[2]
${KU_W_invest_US_stocks_performancePeriod} =  xpath=//div[@class='b-period-option_wrapper disable-browser-text-select']