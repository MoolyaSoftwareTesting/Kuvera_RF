*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_invest_MF_filter} =  All
${e_invest_MF_mf1} =  Tata Digital India (DR)
${e_invest_MF_mf2} =  Axis Bluechip (G)
${e_invest_MF_mf3} =  Mirae Hybrid Equity (G)
${e_invest_MF_mf4} =  LIC MF Childrens (G)
${e_invest_MF_mf5} =  ICICI Pru Constant Maturity Gilt (G)
${e_invest_MF_AUM} =  AUM 
${e_invest_MF_TER} =  TER 
${e_invest_MF_sipAmt} =  SIP amount
${e_invest_MF_sipMinVal1} =  Min. ₹500
${e_invest_MF_sipMinVal2} =  Min. ₹1,000
${e_invest_MF_sipVal} =  1000
${e_invest_MF_lumpsumAmt} =  Lumpsum amount
${e_invest_MF_minLumpsumAmt} =  Min. ₹5,000
${e_invest_MF_lumpsumval} =  6000
${e_invest_MF_compareWithOtherLabel} =  Compare with other fund
${e_invest_MF_pastPerformDesc} =  Past performance is no guarantee of future returns.
${e_invest_MF_hadUInvestedLabel} =  Had you invested
${e_invest_MF_investedAmt} =  100000
${e_invest_MF_overTheLast} =  Over the last
${e_invest_MF_yourReturns} =  Your returns would have been:
${e_invest_MF_fixedDeposit} =  Fixed deposit
${e_invest_MF_topHoldings} =  Top holdings
${e_invest_MF_minSIPLabel} =  Minimum SIP
${e_invest_MF_minLumpsumLabel} =  Minimum lumpsum
${e_invest_MF_addLumpsumLabel} =  Additional lumpsum
${e_invest_MF_growthLabel} =  Growth
${e_invest_MF_pruLabel} =  Pru
${e_invest_MF_assetLabel} =  Asset
${e_invest_MF_growthDirectPlan} =  Growth Direct Plan
${e_invest_MF_growthDirectPlanShort} =  (G)
${e_invest_MF_dividendDirectPlan} =  Dividend Reinvest Direct Plan
${e_invest_MF_dividendDirectPlanShort} =  (DR)
${e_invest_MF_prudential} =  Prudential


# Application Locator 'KU_<locatorName>'
${KU_A_invest_MF_imgfromExplore} =  xpath=//*[@text='mf']
${KU_A_invest_MF_title} =  xpath=//*[@text='MF']
${KU_A_invest_MF_dividendIcon} =  xpath=//*[@text='Dividend']
${KU_A_invest_MF_equityBtn} =  xpath=//*[@text='Equity']
${KU_A_invest_MF_largeCapBtn} =  xpath=//*[@text='Large Cap Fund']
${KU_A_invest_MF_topWatchlistedBtn} =  xpath=//*[@text='Top watchlisted']
${KU_A_invest_MF_sectoralBtn} =  xpath=//*[@text='Sectoral/Thematic']
${KU_A_invest_MF_investNowBtn} =  xpath=//*[@text='Invest now']
${KU_A_invest_MF_addToCartBtn} =  xpath=//*[@text='Add to cart']
${KU_A_invest_MF_addFundBtn} =  xpath=//*[@text='Add fund']
${KU_A_invest_MF_searchFundLabel} =  xpath=//*[@text='Search and add fund']
${KU_A_invest_MF_closePopup} =  xpath=//*[@text='close-nav-mobile']
${KU_A_invest_MF_pastPerformance} =  xpath=//*[@text='Past performance']
${KU_A_invest_MF_fundHoldingsArrow} =  xpath=//*[@text='See fund holdings as of 28th Feb']
${KU_A_invest_MF_fundHoldingsClosingArrow} =  xpath=//*[@text='top-arrow-light-1']
${KU_A_invest_MF_otherInfo} =  xpath=//*[@text='Other information']
${KU_A_invest_MF_SIPInputField} =  xpath=(//*[@class='android.widget.EditText'])[1]
${KU_A_invest_MF_lumpsumInputField} =  xpath=(//*[@class='android.widget.EditText'])[2]
${KU_A_invest_MF_hybridBtn} =  xpath=//*[@text='Hybrid']
${KU_A_invest_MF_aggHybridBtn} =  xpath=//*[@text='Aggressive Hybrid Fund']
${KU_A_invest_MF_solutionOrientedBtn} =  xpath=//*[@text='Solution Oriented']
${KU_A_invest_MF_childrensFundBtn} =  xpath=//*[@text='Childrens Fund']
${KU_A_invest_MF_debtBtn} =  xpath=//*[@text='Debt']
${KU_A_invest_MF_ICICIfilter2Btn} =  xpath=//*[@text='Gilt Fund with 10 year constant duration']
${KU_A_invest_MF_SIP_lumpsum_InvestBtn} =  xpath=(//*[@text='Invest now'])[2]