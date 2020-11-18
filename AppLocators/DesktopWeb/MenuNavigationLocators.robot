*** Variables ***

@{e_loan_calculatorMsgListItem} =  Create List  up to 80% of your mutual fund portfolio.   MF units remain secure with the fund house.     No fixed loan period. A 1yr loan auto renews on the 12th month.     Loan starting from ₹25,000 up to ₹10cr.  Full disclosure. No hidden fees.

#Application Expected Values 'e_<variableName>'
#Loan Navigation Page Variables
${e_loan_headerTitleText} =  Get an instant loan backed by your portfolio
${e_loan_headerMsgText} =  Let your investments work for you. The only loan account you'll ever need.
${e_loan_checkElibilityBtnText} =  Check your eligibility
${e_loginPage} =  Login. Start Investing.
${e_loan_calculatorTitleText} =  An affordable loan
@{e_loan_calculatorMsgList} =  up to 80% of your mutual fund portfolio.  MF units remain secure with the fund house.  No fixed loan period. A 1yr loan auto renews on the 12th month.  Loan starting from ₹25,000 up to ₹10cr.  

${e_loan_highlyFlexibleTitle} =  Highly flexible
${e_loan_highlyFlexibleMsg} =  Repay your outstanding loan, in full or in parts, anytime during the loan period.
${e_loan_payForWhatYouUseText} =  Pay for what you use
${e_loan_payForWhatYouUseMsgText} =  As EMI, you pay the interest portion of the outstanding loan. The Principal portion can be deposited based on comfort.
${e_loan_redemptionTitleText} =  Instant Approval
${e_loan_redemptionMsgText} =   Get money in two business days.
${e_loan_saveSuperAffordableTitleText} =  Super affordable
${e_loan_saveSuperAffordableMsgText} =  Pay as low as 10.50% per annum interest rate on a reducing balance basis.
${e_loan_startSaveTitleText} =  Easy as 1, 2, 3 & 4 
${e_loan_startSaveMsgText} =  Complete the process in under 3 minutes. It's secure, fast, and easy.
${e_loan_startSaveImage1Text} =  Import Portfolio to check eligibility
${e_loan_startSaveImage2Text} =  Select loan amount
${e_loan_startSaveImage3Text} =  Complete KYC and signature
${e_loan_startSaveImage4Text} =  Setup EMI
${e_loan_getLoanAgainstMFText} =  Get loan against Mutual Funds
${e_loan_getLoanAgainstMFMsgText} =  An affordable, quick, and flexible loan. All paperless.
${e_loan_startSaveCheckEligibiliyText} =  Check your eligibility

#Insure Navigation Page Variables
${e_insure_headerTitleText} =  Fair and friendly health insurance is here
${e_insure_headerMsgText} =  ₹50L cover starting at ₹900/month*. Secure your loved ones today.
${e_insure_T&CText} =  *T&C apply
${e_insure_checkPremiumBtnText} =  Check premium
${e_insure_costDetailsHeaderText} =  We understand cost
${e_insure_treatmentTitleText} =  Treatment
${e_insure_treatmentCostTitleText} =  Est.Cost
${e_insure_covid19TitleText} =  COVID-19
${e_insure_covid19CostText} =  ₹8L
${e_insure_cancerCareTitleText} =  Cancer care
${e_insure_cancerCareCostText} =  ₹25L
${e_insure_openHeartSurgeryTitleText} =  Open heart surgery
${e_insure_openHeartSurgeryCostText} =  ₹20L
${e_insure_kneeReplacementTitleText} =  Knee replacement
${e_insure_kneeReplacementCostText} =  ₹4.5L


#Remit Page Expected Data
${e_remit_screenTitle} =  A cheaper & faster way to send money home
${e_remit_screenTitleDesc} =  Now invest easily through Kuvera, or send money to your loved ones. With our partner TransferWise, you can transfer money to India for the lowest-cost. It is simple and faster than any traditional provider.
${e_remit_transferNowBtn} =  Transer now
#${e_remit_whyTransferWiseList} =  Why TransferWise?  No hidden fees  Up to 8x cheaper than banks  Trusted by 7 million users  Fast way to send money  Mid-market exchange rate
${e_remit_transferWiseSignupTitle} =  Transfer Money Online | Send Money Abroad with TransferWise - Sign up
${e_remit_transferWiseCross-borderTitle} =  Making cross-border investments with Kuvera seamless and easy | TransferWise - TransferWise
@{e_remit_whyTransferWiseList} =  No hidden fees  Up to 8x cheaper than banks  Trusted by 7 million users  Fast way to send money  Mid-market exchange rate

#Application Locator 'KU_<locatorName>'
#Kuvera :: Wealth Management Simplified
#Loan Navigation Page
${KU_W_loanHeaderTitle} =  xpath=//div[@class='b-header__title']
${KU_W_loanHeaderMsg} =  xpath=//div[contains(text(),'Let your investments work for you. The only loan a')]
${KU_W_loanCheckEligibility} =  class=b-state-save-btn__text
${KU_W_loginPageTitle} =  xpath=//div[contains(text(),'Login. Start Investing.')]
${KU_W_loanLink} =  xpath=//a[@class='b-header__content__las']
${KU_W_loanCalculatorTitle} =  xpath=//div[@class='b-calculator__text-content']/div[1]
${KU_W_loanCalculatorMsgList} =  xpath=//ul[@class='b-calculator__list']/li
${KU_W_highlyFlexibleTitle} =  xpath=//div[@class='b-withdraw-30min__title']  
${KU_W_highlyFlexibleMsg} =  xpath=//div[@class='b-withdraw-30min__msg']/p
${KU_W_payForWhatYouUseTitle} =  xpath=(//div[@class='b-sleep__text-content']/div)[1] 
${KU_W_payForWhatYouUseMsg} =  xpath=(//div[@class='b-sleep__msg']/p)[1] 
${KU_W_loanRedemptionTitle} =  xpath=//div[@class='b-instant-redemption__title']     
${KU_W_loanRedemptionMsg} =  xpath=//div[@class='b-instant-redemption__msg-div']/p
${KU_W_saveSuperAffordableTitle} =  xpath=//div[@class='b-sleep b-kuvera-save__super-affordable']/div[1]/div[1]
${KU_W_saveSuperAffordableMsg} =  xpath=//div[@class='b-sleep b-kuvera-save__super-affordable']/div[1]/div[2]/p
${KU_W_startSaveTitle} =  xpath=//div[@class='b-start-save b-kuvera-save__start-save__item']/div[1]/div[1]
${KU_W_startSaveMsg} =  xpath=//div[@class='b-start-save b-kuvera-save__start-save__item']/div[1]/div[2]
${KU_W_flowchartImage1} =  xpath=//img[@class='b-flow-chart__image b-flow-chart-image-1']
${KU_W_image1Description} =  xpath=(//div[@class='b-flow-chart__description'])[1]
${KU_W_flowchartImage2} =  xpath=//img[@class='b-flow-chart__image b-flow-chart-image-2']
${KU_W_image2Description} =  xpath=(//div[@class='b-flow-chart__description'])[2]
${KU_W_flowchartImage3} =  xpath=//img[@class='b-flow-chart__image b-flow-chart-image-3']
${KU_W_image3Description} =  xpath=(//div[@class='b-flow-chart__description'])[3]
${KU_W_flowchartImage4}=  xpath=//img[@class='b-flow-chart__image b-flow-chart-image-4']
${KU_W_image4Description} =  xpath=(//div[@class='b-flow-chart__description'])[4]
${KU_W_getLoanAgainstMF} =  xpath=//div[@class='b-start-save b-kuvera-get-loan']/div[1]/div[1]
${KU_W_getLoanAgainstMFMsg} =  xpath=//div[@class='b-start-save b-kuvera-get-loan']/div[1]/div[2]
${KU_W_startSaveCheckEligibilityBtn} =  xpath=//button[@class='button-primary b-start-save__btn b-start-save__btn-desktop']
  
#Insure Navigation Page  
${KU_W_insureLink} =  xpath=//a[contains(text(),'Insure')]
${KU_W_insureHeaderTitle} =  xpath=(//div[@class='b-health-insurance-landing__title--main'])[1]
${KU_W_insureHeaderMsg} =  xpath=(//div[@class='b-health-insurance-landing__title--text'])[1]
${KU_W_termsAndConditions} =  xpath=//span[@class='b-health-insurance-landing__term-condition']
${KU_W_checkPremiumBtn} =  xpath=(//div[@class='b-health-insurance-landing__cta']/button)[1]
${KU_W_costDetailsHeaderTitle} =  xpath=//div[@class='b-health-insurance-landing__cost-details--table__text']
${KU_W_treatmentTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[1]
${KU_W_treatmentCostTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[1]

${KU_W_covid19Cost} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[2]
${KU_W_cancerCareCost} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[3]
${KU_W_OpenHeartSurgeryCost} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[4]
${KU_W_kneeReplacementCost} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__cost'])[5]

${KU_W_covid19Title} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[2]
${KU_W_cancerCareTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[3]
${KU_W_heartSurgeryTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[4]
${KU_W_kneeReplacmentTitle} =  xpath=(//div[@class='b-health-insurance-landing__cost-details--table__treatment'])[5]

${KU_W_covid19Image} =  xpath=(//img[@class='b-health-insurance-landing__cost-details--img'])[1] 
${KU_W_cancerCareImage} =  xpath=(//img[@class='b-health-insurance-landing__cost-details--img'])[2] 
${KU_W_openHeartSurgeryImage} =  xpath=(//img[@class='b-health-insurance-landing__cost-details--img'])[3] 
${KU_W_kneeReplacementImage} =  xpath=(//img[@class='b-health-insurance-landing__cost-details--img'])[4] 
      
      
#Remit Page    
${KU_W_remit_Link} =  xpath=//a[contains(text(),'Remit')]
${KU_W_remit_screenTitle} =  xpath=//*[@class='b-introduction__desc__title']
${KU_W_remit_screenTitleDesc} =  xpath=//*[@class='b-introduction__desc__content']      
${KU_W_remit_transferNowTopBtn} =  xpath=//button[@class='button-primary b-introduction__btn-transfer__item']      
${KU_W_remit_whyTransferWise} =  xpath=//*[@class='b-why-transferwise b-transferwise__calculator-why__item__content']/div    
${KU_W_remit_whyTransferWiseList} =  xpath=//*[@class='b-why-transferwise__list']/div     
${KU_W_transferWiseStepsModal} =  xpath=//*[@class='b-transferwise-transfer-step__title__items__1']
${KU_W_transferWiseNextStepsList} =  xpath=//*[@class='b-transferwise-transfer-step__step__item__content']/div
${KU_W_transferWiseNextStepsContinueBtn} =  xpath=//*[@class='button-primary b-transferwise-transfer-step__btn-continue__item']
${KU_W_transferWiseStepsClose} =  xpath=//*[@class='b-transferwise-transfer-step__title__img-close']
${KU_W_transferWiseVideo} =  xpath=//*[@class='b-how b-transferwise__how']
${KU_W_remit_calculator_iFrame} =  xpath=//iFrame[@class='b-calculator__iframe-transferwise'] 
${KU_W_remit_sendMoneyBtn} =  xpath=(//button[@type='button'])[3]      
${KU_W_remit_knowMoreBtn} =  xpath=//button[@class='button-primary b-why-transferwise__btn-know-more']  
${KU_W_remit_calculatorTarget} =  xpath=//*[@id="tw-calculator-target"]
${KU_W_remit_transferNoBottomBtn} =  xpath=//button[@class='button-primary b-how__btn-transfer']
    