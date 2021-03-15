*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_invest_link} =  Invest
${e_invest_lowRisk} =  Low risk
${e_invest_highRisk} =  High risk
${e_invest_SS_subTitle} =  Invest in low risk liquid funds and redeem upto ₹2 lakhs instantly
${e_invest_explore} =  Explore
${e_invest_growth} =  Growth
${e_invest_dividend} =  Dividend
${e_invest_3Y} =  3Y
${e_invest_instaRedeemFilter} =  Liquid Fund
${e_invest_saveTaxFilter} =  ELSS
${e_invest_ELSS_topRated_investorChoiceFilter} =  Equity
${e_invest_newFunds_openEnded} =  Open Ended
${e_invest_newFunds_closeEnded} =  Close Ended
${e_invest_US_subTitle} =  Park money for the short term
${e_invest_GF_US_BankPSU_filteredFund} =  Debt
${e_invest_ELSS_subTitle} =  Save up to ₹46.8k in taxes.
${e_invest_ETF_subTitle} =  Go global with direct US ETF investing. We make it easy and cheap.
${e_invest_1Y} =  1Y
${e_invest_5Y} =  5Y
${e_invest_EI_subTitle} =  Get index returns at low cost.
${e_invest_stocks_noStocks} =  No stocks available

# Application Locator 'KU_<locatorName>'
${KU_A_invest_link} =  xpath=//*[@text='Invest']
${KU_A_invest_all} =  xpath=//*[@text='ALL']
${KU_A_invest_saveSmartImg} =  xpath=//*[@text='savesmart']
${KU_A_invest_SS_tilesTitle} =  xpath=//*[@text='SaveSmart']
${KU_A_invest_SS_screenSubTitle} =  xpath=//*[@text='Liquid fund returns, higher instant withdrawal\n(upto ₹2 lakhs or 90% of holdings within 30 min)']
${KU_A_invest_GF_title} =  xpath=//*[@text='Gilt funds']
${KU_A_invest_sortBtn} =  xpath=//*[@text='Sort']
${KU_A_invest_filterBtn} =  xpath=//*[@text='Filter']
${KU_A_invest_checkmark} =  xpath=//*[@text='selected-checkmark']
${KU_A_invest_doneBtn} =  xpath=//*[@text='Done']
${KU_A_invest_watchlistMenu} =  xpath=//*[@text='Watchlist']
${KU_A_invest_loginBtn} =  xpath=//*[@text='Login']
${KU_A_invest_allFundsMenu} =  xpath=//*[@text='All funds']
${KU_A_invest_importNowBtn} =  xpath=//*[@text='Import now >']
${KU_A_invest_instaRedeemMenu} =  xpath=//*[@text='Insta redeem']
${KU_A_invest_GF_subTitle} =  xpath=//*[@text='Invest in govt bonds. Zero credit risk, but have rate risk.']
${KU_A_invest_seekBar} =  xpath=//*[@class='android.widget.SeekBar']
${KU_A_invest_saveTaxes} =  xpath=//*[@text='Save taxes']
${KU_A_invest_topRated} =  xpath=//*[@text='Top rated']
${KU_A_invest_investorChoice} =  xpath=//*[@text='Investor choice']
${KU_A_invest_newFunds} =  xpath=//*[@text='New funds']
${KU_A_invest_topSearched} =  xpath=//*[@text='Top searched']
${KU_A_invest_US_tilesTitle} =  xpath=//*[@text='Ultra-short']
${KU_A_invest_topRated} =  xpath=//*[@text='Investor choice']
${KU_A_invest_ELSS_tilesTitle} =  xpath=//*[@text='ELSS tax saver']
${KU_A_invest_ETF_imgIcon} =  xpath=//*[@text='us-etf']
${KU_A_invest_ETF_tilesTitle} =  xpath=//*[@text='US ETF']
${KU_A_invest_allUSStocks} =  xpath=//*[@text='All US stocks']
${KU_A_invest_allStocks} =  xpath=//*[@text='All stocks']
${KU_A_invest_gainers} =  xpath=//*[@text='Gainers']
${KU_A_invest_losers} =  xpath=//*[@text='Losers']
${KU_A_invest_52WHigh} =  xpath=//*[@text='52W high']
${KU_A_invest_52WLow} =  xpath=//*[@text='52W low']
${KU_A_invest_USStocks_importTagTitle} =  xpath=//*[@text='Import US stocks & track your wealth in one place.']
${KU_A_invest_stocks_importTagTitle} =  xpath=//*[@text='Import stocks & track your wealth in one place.']
${KU_A_invest_funds_importTagTitle} =  xpath=//*[@text='Import your MFs and switch to Direct. Start saving commissions.']
${KU_A_invest_USStocks_watchlistTitle} =  xpath=//*[@text='Track your favorite stocks by adding them to your watch list.']
${KU_A_invest_stocks_watchlistTitle} =  xpath=//*[@text='Login to track your favorite stocks by adding them to your watch list.']
${KU_A_invest_funds_watchlistTitle} =  xpath=//*[@text='Login to track your favorite funds by adding them to your watch list.']
${KU_A_invest_EI_tilesTitle} =  xpath=//*[@text='Equity index']
${KU_A_invest_SF_tilesTitle} =  xpath=//*[@text='Sector funds']
${KU_A_invest_SF_subTitle} =  xpath=//*[@text='Pharma, Tech & more']
${KU_A_invest_VF_tilesTitle} =  xpath=//*[@text='Value funds']
${KU_A_invest_VF_subTitle} =  xpath=//*[@text='Invest in stocks selling below their intrinsic or book value.']
${KU_A_invest_52WkIndia_allStocksMenu} =  xpath=//*[@text='All stocks']
${KU_A_invest_52WkIndia_tilesTitle} =  xpath=//*[@text='52 wk high India']
${KU_A_invest_52WkIndia_subTitle} =  xpath=//*[@text='Momentum stocks in India']
${KU_A_invest_52WkUS_tilesTitle} =  xpath=//*[@text='52 wk high US']
${KU_A_invest_52WkUS_subTitle} =  xpath=//*[@text='Momentum stocks in US']
${KU_A_invest_ETFMenu} =  xpath=//*[@text='ETF']
${KU_A_invest_BankPSU_tilesTitle} =  xpath=//*[@text='Bank & PSU bonds']
${KU_A_invest_FD_tilesTitle} =  xpath=//*[@text='FD']
${KU_A_invest_FD_subTitle} =  xpath=//*[@text=concat('India', "'", 's favorite saving instrument')]
${KU_A_invest_crypto_title} =  xpath=//*[@text='Crypto']
${KU_A_invest_crypto_subTitle} =  xpath=//*[@text='BTC, ETH et al. Join the crypto revolution']
${KU_A_invest_digiGold_imgIcon} =  xpath=//*[@text='digital-gold']
${KU_A_invest_digiGold_tilesTitle} =  xpath=//*[@text='Digital gold']
${KU_A_invest_digiGold_subTitle} =  xpath=//*[@text='Diversify your portfolio with Gold.']
${KU_A_invest_1MBtn} =  xpath=//*[@text='1M']
${KU_A_invest_1DBtn} =  xpath=//*[@text='1D']
${KU_A_invest_1WBtn} =  xpath=//*[@text='1W']
${KU_A_invest_6MBtn} =  xpath=//*[@text='6M']
${KU_A_invest_1YBtn} =  xpath=//*[@text='1Y']
${KU_A_invest_3YBtn} =  xpath=//*[@text='3Y']
${KU_A_invest_3MBtn} =  xpath=//*[@text='3M']
${KU_A_invest_5YBtn} =  xpath=//*[@text='5Y']
${KU_A_invest_graphImg} =  xpath=(//*[@class='android.widget.Image'])[4]
${KU_A_invest_infoImg} =  xpath=//*[@text='info']
${KU_A_invest_ascArrow1} =  xpath=(//*[@text='table-asc'])[1]
${KU_A_invest_ascArrow2} =  xpath=(//*[@text='table-asc'])[2]
${KU_A_invest_ascArrow3} =  xpath=(//*[@text='table-asc'])[3]
${KU_A_invest_ascArrow4} =  xpath=(//*[@text='table-asc'])[4]
${KU_A_invest_ascArrow5} =  xpath=(//*[@text='table-asc'])[5]
${KU_A_invest_descArrow1} =  xpath=(//*[@text='table-desc'])[1]
${KU_A_invest_descArrow2} =  xpath=(//*[@text='table-desc'])[2]
${KU_A_invest_descArrow3} =  xpath=(//*[@text='table-desc'])[3]
${KU_A_invest_descArrow4} =  xpath=(//*[@text='table-desc'])[4]
${KU_A_invest_stocks_allStocksLink} =  xpath=//*[@text='Go to ‘All stocks’']
${KU_A_invest_searchIcon} =  xpath=//*[@text='search-icon-active']
${KU_A_invest_buyIcon} =  xpath=//*[@text='Buy']