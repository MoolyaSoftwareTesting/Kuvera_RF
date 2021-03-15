*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_invest_stocks_stocks1} =  Adani Green Energy Ltd
${e_invest_stocks_compareWithStock} =  Compare with other stock
${e_invest_stocks_priceLabel} =  Price
${e_invest_stocks_todaysHighLabel} =  Today’s high
${e_invest_stocks_todaysLowLabel} =  Today’s low
${e_invest_stocks_52WHighLabel} =  52W high
${e_invest_stocks_52WLowLabel} =  52W low
${e_invest_stocks_PELabel} =  PE
${e_invest_stocks_PBLabel} =  PB
${e_invest_stocks_EPS(TTM)Label} =  EPS (TTM)
${e_invest_stocks_dividendYieldLabel} =  Dividend yield
${e_invest_stocks_marketCapLabel} =  Market cap
${e_invest_stocks_volumeLabel} =  Volume
${e_invest_stocks_avgVolumeLabel} =  Average volume

# Application Locator 'KU_<locatorName>'
${KU_A_invest_stocks_imgfromExplore} =  xpath=//*[@text='stocks']
${KU_A_invest_stocks_title} =  xpath=//*[@text='Stocks']
${KU_A_invest_stocks_stock1} =  xpath=//*[@text='Adani Green Energy Ltd']
${KU_A_invest_stocks_utilitiesBtn} =  xpath=//*[@text='Utilities']
${KU_A_invest_stocks_renewUtilityBtn} =  xpath=//*[@text='Utilities - Renewable']
${KU_A_invest_stocks_buyBtn} =  xpath=//*[@text='Buy']
${KU_A_invest_stocks_stk1} =  xpath=//*[contains(text(),'ADANIGREEN')]
${KU_A_invest_stocks_stocks4} =  xpath=//*[@text='LIC stocks Childrens (G)']
${KU_A_invest_stocks_addStocks} =  xpath=//*[@text='Add']
${KU_A_invest_stocks_searchStocks} =  xpath=//*[@text='Search and add stock']
${KU_A_invest_stocks_financials} =  xpath=//*[@text='Financials']