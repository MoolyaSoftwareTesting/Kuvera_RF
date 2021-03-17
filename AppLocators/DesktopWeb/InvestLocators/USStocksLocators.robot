*** Variables *** 
# Application Expected Values 'e_<variableName>'
# US Stocks
${e_invest_USStocks_title} =  Diversify with US stocks
${e_invest_USStocks_subTitle} =  Powered by
${e_invest_USStocks_signupDetail} =  Zero commission. Start with $10.
${e_invest_USStocks_investTitleDesc} =  Own your favorite companies   
${e_invest_USStocks_investSubTitle1} =  Start with $10.
${e_invest_USStocks_investSubTitle2} =  Invest in 1000+ stocks and ETFs.
${e_invest_USStocks_investSubTitle3} =  Easy money transfer. We help you with the process.
${e_invest_USStocks_zeroBrokerageTitle} =   Zero brokerage
${e_invest_USStocks_zeroBrokerageDesc} =  Pay less, get more.    
${e_invest_USStocks_zeroBrokInfoMsg} =  Commission-free trading means $0 commission trades placed on self-directed accounts via mobile devices or web. Keep in mind, other fees (such as wire and FX conversion fees) may still apply. Please see Vested pricing page to learn more
${e_invest_USStocks_stressFreeHeader} =  Stress free investing  
${e_invest_USStocks_stressFreeDesc} =  Holding secured up to $500,000\n(₹3.8 Crores). 
${e_invest_USStocks_taxFilingHeader} =  Easy tax filing
${e_invest_USStocks_taxFilingDesc} =  Capital gains report ready on year-end.
${e_invest_USStocks_investmentProcessTitle} =  3 easy steps to start
${e_invest_USStocks_investmentProcessSubTitle} =  Secure, fast and easy. Takes 5 minutes to start. 
${e_invest_USStocks_investmentProcessNo1} =  1
${e_invest_USStocks_investmentProcessNo2} =  2
${e_invest_USStocks_investmentProcessNo3} =  3
${e_invest_USStocks_investmentProcessLabel1} =  Sign up and KYC     
${e_invest_USStocks_investmentProcessLabel2} =  Fund your account    
${e_invest_USStocks_investmentProcessLabel3} =  Invest with confidence
${e_invest_USStocks_goGlobalTitle} =  Go global with US stocks   
${e_invest_USStocks_faq_question1} =  1. What are the costs involved in setting up a Vested account?
${e_invest_USStocks_faq_question2} =  2. How do I fund my Vested account?
${e_invest_USStocks_faq_question3} =  3. How will taxes work for the US investing?
${e_invest_USStocks_faq_answer1} =  Vested charges a time account setup fee of ₹399 to create your US investing account. Please note, there is no cost involved to buy/sell either stocks or ETFs on Vested. Check Vested pricing here.
${e_invest_USStocks_faq_answer2} =  Investments in US equities must be made in US Dollars(USD). You must wire (remit) USD to Vested partner bank in the US to fund your account. In order to do this, you must fill out an LRS form (it’s called the A2 form) and submit it to your bank.\n\nDo not worry! Vested will make this process easy for you. When you set up your US Stocks portfolio, Vested will guide you through this process. Please note that there are costs involved in the fund transfer process. These costs vary according to the bank you use. For example, there is a fixed cost of between ₹500 - ₹1500 per fund transfer.           
${e_invest_USStocks_faq_answer3} =  For Vested users there are two types of taxation events:\n\n1. Taxes on investment gains: You will be taxed in India for this gain. You will not be taxed in the US. The amount of taxes you have to pay in India depends on how after how long you exit the investment. If you exit after 24 months, it is treated as long-term capital gains and the gains will be subject to 20% tax with indexation benefit. Below 24 months is short-term capital gain and is taxed according to your income tax slab.\n\n2. Taxes on dividends: Unlike investment gains, dividends will be taxed in the US at a flat rate of 25%. Fortunately, the US and India have a Double Taxation Avoidance Agreement (DTAA), which allows taxpayers to offset income tax already paid in the US. The 25% tax you already paid in the US is made available as Foreign Tax Credit and can be used to offset your income tax payable in India.
${e_invest_USStocks_healthcareFilter} =  Healthcare
${e_invest_USStocks_transactStocksTitle} =  Transact stocks
${e_invest_USStocks_transactStocksSubTitle} =  Buy an entire stock or a fraction. Powered By
${e_invest_USStocks_buyBtn} =  Buy 
${e_invest_USStocks_importHoldingsBtn} =  Import holdings
${e_invest_USStocks_companyHeader_about} =  About 
${e_invest_USStocks_botQA_ques1} =  What if Kuvera or Vested shut down?

# Application Locator 'KU_<locatorName>'
# US Stocks Navigation Page
# US Stocks
${KU_W_invest_USStocksTitle} =  xpath=//div[@class='b-introduction__detail__title1']
${KU_W_invest_USStocksSubTitle} =  xpath=//div[@class='b-introduction__detail__title2']
${KU_W_invest_USStocksLandingScreen_vestedLogo} =  xpath=//img[@class='b-introduction__detail__title2__img']
${KU_W_invest_USStocks_signupDetail} =  xpath=//div[@class='b-introduction__detail__sign-up']
${KU_W_invest_USStocks_startTodayBtn} =  xpath=//button[@class='button-primary b-introduction__btn__start-today']
${KU_W_invest_USStocks_introductoryImg} =  xpath=//img[@class='b-introduction__img-title__item']
${KU_W_invest_USStocks_investTitleDesc} =  xpath=//div[@class='b-invest__desc__title']
${KU_W_invest_USStocks_investSubTitle1} =  xpath=//div[@class='b-invest__desc__features']/div[1]
${KU_W_invest_USStocks_investSubTitle2} =  xpath=//div[@class='b-invest__desc__features']/div[2]
${KU_W_invest_USStocks_investSubTitle3} =  xpath=//div[@class='b-invest__desc__features']/div[3]
${KU_W_invest_USStocks_exploreMoreLink} =  xpath=//a[@class='b-invest__top-fund__explore-more']
${KU_W_invest_USStocks_zeroBrokerageTitle} =  xpath=//div[@class='b-zero-comission__desc__title']
${KU_W_invest_USStocks_zeroBrokerageDesc} =  xpath=//div[@class='b-zero-comission__desc__content']
${KU_W_invest_USStocks_zeroCommissionImg} =  xpath=//img[@class='b-zero-comission__img-title__item']
${KU_W_invest_USStocks_zeroBrokInfoLink} =  xpath=//img[@class='b-zero-comission__desc__content__tooltip']
${KU_W_invest_USStocks_zeroBrokInfoMsg} =  xpath=//div[@class='tooltip-inner popover-inner']
${KU_W_invest_USStocks_learnMorePopupLink} =  xpath=//a[@class='b-zero-comission__desc__content__popup__link']
${KU_W_invest_USStocks_stockInvestLink1} =  xpath=(//div[@class='b-invest__top-fund__content__item__name'])[1]
${KU_W_invest_USStocks_stockInvestLink2} =  xpath=(//div[@class='b-invest__top-fund__content__item__name'])[2]
${KU_W_invest_USStocks_stockInvestLink3} =  xpath=(//div[@class='b-invest__top-fund__content__item__name'])[3]
${KU_W_invest_USStocks_stockInvestLink4} =  xpath=(//div[@class='b-invest__top-fund__content__item__name'])[4]
${KU_W_invest_USStocks_stressFreeHeader} =  xpath=//div[@class='b-stress-free__desc__title']
${KU_W_invest_USStocks_stressFreeDesc} =  xpath=//div[@class='b-stress-free__desc__content']
${KU_W_invest_USStocks_stressFreeImg} =  xpath=//img[@class='b-stress-free__img-title__item']
${KU_W_invest_USStocks_taxFilingHeader} =  xpath=//div[@class='b-tax-compliant__desc__title']
${KU_W_invest_USStocks_taxFilingDesc} =  xpath=//div[@class='b-tax-compliant__desc__subtitle']
${KU_W_invest_USStocks_taxFilingImg} =  xpath=//img[@class='b-tax-compliant__img__item']
${KU_W_invest_USStocks_investmentProcessTitle} =  xpath=//div[@class='b-investment-process__title']
${KU_W_invest_USStocks_investmentProcessSubTitle} =  xpath=//div[@class='b-investment-process__desc']
${KU_W_invest_USStocks_investmentProcessNo1} =  xpath=(//div[@class='b-investment-process__steps__item__no'])[1]
${KU_W_invest_USStocks_investmentProcessNo2} =  xpath=(//div[@class='b-investment-process__steps__item__no'])[2]
${KU_W_invest_USStocks_investmentProcessNo3} =  xpath=(//div[@class='b-investment-process__steps__item__no'])[3]
${KU_W_invest_USStocks_investmentProcessImg1} =  xpath=(//img[@class='b-investment-process__steps__item__img'])[1]
${KU_W_invest_USStocks_investmentProcessImg2} =  xpath=(//img[@class='b-investment-process__steps__item__img'])[2]
${KU_W_invest_USStocks_investmentProcessImg3} =  xpath=(//img[@class='b-investment-process__steps__item__img'])[3]
${KU_W_invest_USStocks_investmentProcessLabel1} =  xpath=(//div[@class='b-investment-process__steps__item__label'])[1]
${KU_W_invest_USStocks_investmentProcessLabel2} =  xpath=(//div[@class='b-investment-process__steps__item__label'])[2]
${KU_W_invest_USStocks_investmentProcessLabel3} =  xpath=(//div[@class='b-investment-process__steps__item__label'])[3]
${KU_W_invest_USStocks_goGlobalTitle} =  xpath=//div[@class='b-sign-invest__desc__title']
${KU_W_invest_USStocks_goGlobalSubTitle} =  xpath=//div[@class='b-sign-invest__desc__content']
${KU_W_invest_USStocks_goGlobalStartTodayBtn} =  xpath=//button[@class='button-primary b-sign-invest__desc__btn']
${KU_W_invest_USStocks_goGlobalImg} =  xpath=//img[@class='b-sign-invest__img-title__item']
${KU_W_invest_USStocks_faq_question1} =  xpath=(//div[@class='b-faq__list__content__question'])[1]
${KU_W_invest_USStocks_faq_question2} =  xpath=(//div[@class='b-faq__list__content__question'])[2]
${KU_W_invest_USStocks_faq_question3} =  xpath=(//div[@class='b-faq__list__content__question'])[3]
${KU_W_invest_USStocks_faq_answer1} =  xpath=(//div[@class='b-faq__list__content__answer'])[1]
${KU_W_invest_USStocks_faq_answer2} =  xpath=(//div[@class='b-faq__list__content__answer'])[2]
${KU_W_invest_USStocks_faq_answer3} =  xpath=(//div[@class='b-faq__list__content__answer'])[3]
${KU_W_invest_USStocks_faq_arrowImg1} =  xpath=(//img[@class='b-faq__list__content__question__arrow-img'])[1]
${KU_W_invest_USStocks_faq_arrowImg2} =  xpath=(//img[@class='b-faq__list__content__question__arrow-img'])[2]
${KU_W_invest_USStocks_faq_arrowImg3} =  xpath=(//img[@class='b-faq__list__content__question__arrow-img'])[3]
${KU_W_invest_USStocks_faq_viewAll} =  xpath=//div[@class='b-faq__list__view-more__content']
${KU_W_invest_USStocks_exploreBtn} =  xpath=//button[@class='button-primary b-introduction__btn__explore']
${KU_W_invest_USStocks_sortYear} =  xpath=//div[@class='standard-select-container b-fund-sort-wrapper b-action-bar__sort__item']
${KU_W_invest_USStocks_filteredTag} =  xpath=//div[contains(@class,'b-stock-item__col1__meta-info')]
${KU_W_invest_USStocks_stockPrice} =  xpath=//div[contains(@class,'b-stock-item__col2__price-val')]
${KU_W_invest_USStocks_defaultFilter} =  xpath=//div[@class='b-action-bar__filter__item__sector__label']
${KU_W_invest_USStocks_healthcareFilter} =  xpath=//div[contains(text(),'Healthcare')]
${KU_W_invest_USStocks_clearAll} =  xpath=//div[@class='b-action-bar__filter__header__btn-clear']
${KU_W_invest_USStocks_searchField} =  xpath=//input[@class='b-action-bar__search__item__text-field']
${KU_W_invest_USStocks_USStockLink} =  xpath=(//div[@class='b-stock-items__content'])/div//a[1]
${KU_W_invest_USStocks_stockName} =  xpath=//div[@class='b-us-stock-basic-info__header--name']
${KU_W_invest_USStocks_marketPrice} =  xpath=//div[@class='b-us-stock-basic-info__price']
${KU_W_invest_USStocks_change%} =  xpath=//div[contains(@class,'b-us-stock-basic-info__return b-us-stock-basic-info')]
${KU_W_invest_USStocks_timestamp} =  xpath=//div[@class='b-us-stock-basic-info__timestamp']
${KU_W_invest_USStocks_gainloss%} =  xpath=//div[contains(@class,'b-us-stock-performance-chart__xirr')]
${KU_W_invest_USStocks_shareIcon} =  xpath=//div[@class='b-us-stock-basic-info__share-icon--desktop']
${KU_W_invest_USStocks_pdfIcon} =  xpath=//div[@class='b-us-stock-basic-info__pdf-icon--mobile']
${KU_W_invest_USStocks_watchlistIcon} =  xpath=(//img[@class='b-us-stock-basic-info__action-icons'])[4]
${KU_W_invest_USStocks_transactStocksTitle} =  xpath=//div[@class='b-us-stock-widget__content-text']
${KU_W_invest_USStocks_transactStocksSubTitle} =  xpath=//div[@class='b-us-stock-widget__content-subtext']
${KU_W_invest_USStocks_vestedLogo} =  xpath=//img[@class='b-us-stock-widget__vested-logo']
${KU_W_invest_USStocks_buyBtn} =  xpath=//div[@class='b-us-stock-widget__content--btn-container']//button[1]
${KU_W_invest_USStocks_importHoldingsBtn} =  xpath=//div[@class='b-us-stock-widget__content--btn-container']//button[2]
${KU_W_invest_USStocks_performanceChart} =  xpath=//div[@class='highcharts-container b-bar-line']
${KU_W_invest_USStocks_companyHeader} =  xpath=//div[@class='b-us-stock-about-heading']
${KU_W_invest_USStocks_companyHeader_about} =  xpath=//div[@class='b-us-stock-about-heading']//span[1]
${KU_W_invest_USStocks_companySubHeader} =  xpath=//div[@class='b-us-stock-about-container']
${KU_W_invest_USStocks_addBtn} =  xpath=//div[@class='b-us-stock-compare-m__add-label']
${KU_W_invest_USStocks_addStocksPopupHeader} =  xpath=//div[@class='b-us-stock-add-stock-m__heading']
${KU_W_invest_USStocks_closePopup} =  xpath=//div[@class='b-us-stock-add-stock-m__close-container']
${KU_W_invest_USStocks_sharePopup} =  xpath=//div[@class='b-us-stock-info__share-popup-text']