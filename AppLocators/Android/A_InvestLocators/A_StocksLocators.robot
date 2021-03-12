*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_invest_stocks_filter} =  All
${e_invest_stocks_stocks1} =  Adani Green Energy Ltd
${e_invest_stocks_compareWithStock} =  Compare with other stock
${e_invest_stocks_stocks3} =  Mirae Asset Hybrid Equity Growth Direct Plan
${e_invest_stocks_stocks4} =  LIC stocks Childrens Growth Direct Plan
${e_invest_stocks_stocks5} =  ICICI Prudential Constant Maturity Gilt Growth Direct Plan
${e_invest_stocks_AUM} =  AUM 
${e_invest_stocks_TER} =  TER 

# Application Locator 'KU_<locatorName>'
${KU_A_invest_stocks_imgfromExplore} =  xpath=//*[@text='stocks']
${KU_A_invest_stocks_title} =  xpath=//*[@text='Stocks']
${KU_A_invest_stocks_stock1} =  xpath=//*[@text='Adani Green Energy Ltd']
${KU_A_invest_stocks_utilitiesBtn} =  xpath=//*[@text='Utilities']
${KU_A_invest_stocks_renewUtilityBtn} =  xpath=//*[@text='Utilities - Renewable']
${KU_A_invest_stocks_buyBtn} =  xpath=//*[@text='Buy']
${KU_A_invest_stocks_stk1} =  xpath=//*[contains(text(),'ADANIGREEN')]
${KU_A_invest_stocks_stocks4} =  xpath=//*[@text='LIC stocks Childrens (G)']