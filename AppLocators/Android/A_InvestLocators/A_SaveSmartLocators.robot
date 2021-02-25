*** Variables ***
# Application Expected Values 'e_<VariableName>'
# SaveSmart
${e_invest_SS_notYourDadSavings} =  Not your Dad’s savings account
${e_invest_SS_smallAlternativeToSavings} =  A smart alternative to savings bank accounts.
${e_invest_SS_enterAmtToCheckReturns} =  Enter amount to check the returns
${e_invest_SS_saveSmartLabel} =  SaveSmart
${e_invest_SS_1YearLabel} =  1 Year
${e_invest_SS_amt} =  150000
${e_invest_SS_3YearLabel} =  3 Year
${e_invest_SS_5YearLabel} =  5 Year
${e_invest_SS_mutualFundRisk} =  Mutual funds are subject to market risks and you should refer to scheme related documents before investing. Past performance is not indicative of future returns.
${e_invest_SS_annualTrailing} =  Trailing annualised returns of liquid funds as a category as on 5th Aug, 2020 are:
${e_invest_SS_periodLabel} =  Period
${e_invest_SS_3MonthsLabel} =  3 months
${e_invest_SS_3YearsLabel} =  3 years
${e_invest_SS_catAvg} =  Cat. Average
${e_invest_SS_3MonthsAvg} =  0.83%
${e_invest_SS_1YearAvg} =  3.66%
${e_invest_SS_3YearsAvg} =  5.01%

# Application Locator 'KU_<locatorName>'
${KU_A_invest_SS_linkFromExplore} =  xpath=//*[@text='SaveSmart']
${KU_A_invest_SS_amountField} =  xpath=//*[@class='android.widget.EditText']