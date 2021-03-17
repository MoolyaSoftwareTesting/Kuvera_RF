*** Variables *** 
# Application Expected Values 'e_<variableName>'
# SaveSmart
${e_invest_ss_screenText} =  Start SaveSmart today
${e_invest_ss_amount} =  2000
${e_invest_ss_saveBtnText} =  Save now 
${e_invest_ss_headerTitleText} =  The smart way to save!
${e_invest_ss_headerMsgText} =  Liquid fund returns, higher instant withdrawal\n(upto ₹2 lakhs or 90% of holdings within 30 min)
${e_invest_ss_calcTitleText} =  Not your Dad’s savings account   
${e_invest_ss_calcMsgText} =  A smart alternative to savings bank accounts.
${e_invest_ss_calcTitleText} =  Not your Dad’s savings account      
${e_invest_ss_trailingHeaderText} =  Trailing annualised returns of liquid funds as a category as on 5th Aug, 2020 are:
${e_invest_ss_trailingReturn1Text} =  Period
${e_invest_ss_returnPeriod1} =  3 months  
${e_invest_ss_returnPeriod2} =  1 year
${e_invest_ss_returnPeriod3} =  3 years
${e_invest_ss_trailingReturn2Text} =  Cat. Average
${e_invest_ss_returnPeriodVal1} =  0.83%    
${e_invest_ss_returnPeriodVal2} =  3.66%   
${e_invest_ss_returnPeriodVal3} =  5.01%
${e_invest_ss_enterAmtText} =  Enter amount to check the returns    
${e_invest_ss_investAmount} =  150000
${e_invest_ss_disclaimerText} =  Mutual funds are subject to market risks and you should refer to scheme related documents before investing. Past performance is not indicative of future returns.
${e_invest_ss_rupeeSymbol} =  ₹
${e_invest_ss_saveSmartTitleText} =   SaveSmart  
${e_invest_ss_returnDuration1} =  1 Year
${e_invest_ss_returnDuration2} =  3 Year  
${e_invest_ss_returnDuration3} =  5 Year
${e_invest_ss_returnAmt1} =  ₹1,55,490       
${e_invest_ss_returnAmt2} =  ₹1,73,693      
${e_invest_ss_returnAmt3} =  ₹1,90,260
${e_invest_ss_withdrawTitleText} =  You need it, you got it!  
${e_invest_ss_withdraMsgText} =  Withdraw upto ₹2 lakhs within 30 minutes.\nBe prepared for all emergencies.
${e_invest_ss_sleepTitleText} =  Sleep peacefully       
${e_invest_ss_sleepMsgText} =  Invest in liquid funds from reputable fund houses.\nClick on logo to see scheme details  
${e_invest_ss_nipponFundName} =  Nippon India Liquid Growth Direct Plan
${e_invest_ss_PGIMfundName} =  PGIM India Insta Cash Growth Direct Plan 
${e_invest_ss_ICICIfundName} =  ICICI Prudential Liquid Growth Direct Plan 
${e_invest_ss_AXISfundName} =  Axis Liquid Growth Direct Plan 
${e_invest_ss_startSaveTitleText} =  Start saving now!
${e_invest_ss_startSaveMsgText} =  And avail all the above mentioned benefits.   
${e_invest_ss_saveBtnText} =  Save now

# Application Locator 'KU_<locatorName>'
# SaveSmart Navigation Page
${KU_W_ss_screenTitle} =  xpath=//div[@class='b-save-now__title']
${KU_W_ss_inputAmount} =  xpath=(//input[@name='amount'])[1]
${KU_W_ss_saveBtn} =  xpath=//button[@class='button-primary b-save-now__btn-save']
${KU_W_ss_headerTitle} =  xpath=//div[@class='b-header__title']
${KU_W_ss_headerMsg} =  xpath=//div[@class='b-header__msg']
${KU_W_ss_calcTitle} =  xpath=//div[@class='b-calculator__title']
${KU_W_ss_calcMsg} =  xpath=//div[@class='b-calculator__msg']
${KU_W_ss_trailingHeader} =  xpath=//div[@class='b-calculator__trailing-returns__header']
${KU_W_ss_trailingReturnTitle1} =  xpath=(//div[@class='b-calculator__trailing-returns__title'])[1]
${KU_W_ss_trailingPeriod1} =  xpath=//div[@class='b-calculator__return-save-smart__years']/div[2]
${KU_W_ss_trailingPeriod2} =  xpath=//div[@class='b-calculator__return-save-smart__years']/div[3]
${KU_W_ss_trailingPeriod3} =  xpath=//div[@class='b-calculator__return-save-smart__years']/div[4]
${KU_W_ss_trailingReturnTitle2} =  xpath=(//div[@class='b-calculator__trailing-returns__title'])[2]
${KU_W_ss_trailingPeriodVal1} =  xpath=//div[@class='b-calculator__trailing-returns__value']/div[2]
${KU_W_ss_trailingPeriodVal2} =  xpath=//div[@class='b-calculator__trailing-returns__value']/div[3]
${KU_W_ss_trailingPeriodVal3} =  xpath=//div[@class='b-calculator__trailing-returns__value']/div[4]
${KU_W_ss_enterAmountTitle} =  xpath=//div[@class='b-calculator__enter-amount']
${KU_W_ss_amountField} =  xpath=(//input[@name='amount'])[2]
${KU_W_ss_disclaimer} =  xpath=//div[@class='b-calculator__return-save-smart__disclaimer']
${KU_W_ss_rupeeSymbol} =  xpath=//div[@class='b-calculator__amount__input']/span
${KU_W_ss_title} =  xpath=//div[@class='b-calculator__return-save-smart__title']
${KU_W_ss_returnPeriod1} =  xpath=(//div[@class='b-calculator__return-save-smart__years'])[2]/div[1]
${KU_W_ss_returnPeriod2} =  xpath=(//div[@class='b-calculator__return-save-smart__years'])[2]/div[2]
${KU_W_ss_returnPeriod3} =  xpath=(//div[@class='b-calculator__return-save-smart__years'])[2]/div[3]
${KU_W_ss_returnAmt1} =  xpath=//div[@class='b-calculator__return-save-smart__value']/div[1]
${KU_W_ss_returnAmt2} =  xpath=//div[@class='b-calculator__return-save-smart__value']/div[2]
${KU_W_ss_returnAmt3} =  xpath=//div[@class='b-calculator__return-save-smart__value']/div[3]
${KU_W_ss_withdrawTitle} =  xpath=//div[@class='b-withdraw-30min__title']
${KU_W_ss_withdrawMsg} =  xpath=//div[@class='b-withdraw-30min__msg']
${KU_W_ss_sleepTitle} =  xpath=//div[@class='b-sleep__title']
${KU_W_ss_sleepMsg} =  xpath=//div[@class='b-sleep__msg']
${KU_W_ss_funds} =  xpath=//div[@class='b-sleep__funds']
${KU_W_ss_fundLogoLink1} =  xpath=(//a[@class='b-sleep__funds__link'])[1]
${KU_W_ss_fundLogoLink2} =  xpath=(//a[@class='b-sleep__funds__link'])[2]
${KU_W_ss_fundLogoLink3} =  xpath=(//a[@class='b-sleep__funds__link'])[3]
${KU_W_ss_fundLogoLink4} =  xpath=(//a[@class='b-sleep__funds__link'])[4]
${KU_W_ss_fundName} =  xpath=//div[@class='b-mf-basic-info__header--fund-name']
${KU_W_ss_navValue} =  xpath=//div[@class='b-mf-basic-info__nav-value']
${KU_W_ss_highChart} =  xpath=//section[@id='container-chart']
${KU_W_ss_startSaveTitle} =  xpath=//div[@class='b-start-save__title']
${KU_W_ss_startSaveMsg} =  xpath=//div[@class='b-start-save__msg']
${KU_W_ss_saveNowBtn} =  xpath=//button[@class='button-primary b-start-save__btn']