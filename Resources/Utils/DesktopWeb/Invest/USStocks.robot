*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin US Stocks Landing Page
    Log To Console  US Stocks
    Navigate To Invest Page And Verify Explore Options  ${KU_W_USStocks}  ${e_invest_USStocks}
    Wait For Element Visibility  ${KU_W_invest_USStocksTitle}
    Verify Element And Text  ${KU_W_invest_USStocksTitle}  ${e_invest_USStocks_title}
    Verify Login And Signup Link 
    Wait For Element Visibility  ${KU_W_invest_USStocks_exploreBtn}
    Click Element  ${KU_W_invest_USStocks_exploreBtn}
    Wait For Element Visibility  ${KU_W_invest_USStocks_sortYear}
    Verify Element And Text  ${KU_W_invest_USStocks_sortYear}  ${e_invest_stocks_sortYear}
    Verify Page Contains Element  ${KU_W_invest_USStocks_filteredTag}
    Verify Page Contains Element  ${KU_W_invest_USStocks_stockPrice}
    Verify Watchlist Icon  ${KU_W_invest_US_SETFAnd52WUS_watchlistBtn}
    Verify Login Page
    Verify Filter For US Stocks
    Verify Presence Of FAQBOT Icon
    Verify Filter Navigation For USStocks USETF and 52WkHighUS  ${KU_W_invest_US_SETFAnd52WUS_watchListHeader}  ${e_invest_USStocksUSETFAnd52WUS_watchlistHeader}  ${e_invest__52WHighLow_UTF_sortYearText}  ${KU_W_invest_US_SETFAnd52WUS_watchlistBtn}
    Wait For Element Visibility  ${KU_W_invest_USStocks_exploreBtn}
    Click Element  ${KU_W_invest_USStocks_exploreBtn}
    # Iterate the US Stocks detail screen
    FOR  ${i}  IN RANGE  1  6
        @{USStockName} =  Get Json Values  $.USStocks.f${i}  Resources/TestData/USStocks.json 
        Log To Console  ${USStockName}
        Search US Stocks and Verify  ${USStockName}
        Sleep  1s
        Verify US Stocks Details Screen  ${KU_W_invest_USStocks_USStockLink}
    END
    Go Back 
    Verify US Stocks Landing Page Widgets

Verify US Stocks Landing Page Widgets
    Log To Console  US Stocks Home Screen
    Verify Element And Text  ${KU_W_invest_USStocksSubTitle}  ${e_invest_USStocks_subTitle}
    Verify Page Contains Image  ${KU_W_invest_USStocksLandingScreen_vestedLogo}
    Verify Element And Text  ${KU_W_invest_USStocks_signupDetail}  ${e_invest_USStocks_signupDetail}
    Wait For Element Visibility  ${KU_W_invest_USStocks_startTodayBtn}   
    Click Element  ${KU_W_invest_USStocks_startTodayBtn}
    Verify Login Page
    Wait For Element Visibility  ${KU_W_invest_USStocks_exploreBtn}
    Click Element  ${KU_W_invest_USStocks_exploreBtn}
    Wait For Element Visibility  ${KU_W_US_SETF52WUS_searchBar}
    Verify Search And Sort  ${KU_W_US_SETF52WUS_searchBar}  ${e_invest_stock_searchBarTxt}  ${KU_W_invest_US_SETFAnd52WUS_searchTextField}  ${KU_W_invest_sort_US_S_UTF_USA}
    Go Back
    Wait For Element Visibility  ${KU_W_invest_USStocks_introductoryImg}
    Verify Page Contains Image  ${KU_W_invest_USStocks_introductoryImg}
    # Own your favourite company
    Verify Element And Text  ${KU_W_invest_USStocks_investTitleDesc}  ${e_invest_USStocks_investTitleDesc}
    Verify Element And Text  ${KU_W_invest_USStocks_investSubTitle1}  ${e_invest_USStocks_investSubTitle1}
    Verify Element And Text  ${KU_W_invest_USStocks_investSubTitle2}  ${e_invest_USStocks_investSubTitle2}
    Verify Element And Text  ${KU_W_invest_USStocks_investSubTitle3}  ${e_invest_USStocks_investSubTitle3}
    # Table
    Verify US Stocks Details Screen  ${KU_W_invest_USStocks_stockInvestLink1}
    Verify US Stocks Details Screen  ${KU_W_invest_USStocks_stockInvestLink2}
    Sleep  2s
    Scroll Untill View  ${KU_W_invest_USStocks_stockInvestLink3}
    Wait For Element Visibility  ${KU_W_invest_USStocks_stockInvestLink3}
    Click Element  ${KU_W_invest_USStocks_stockInvestLink3}
    Wait For Element Visibility  ${KU_W_invest_USStocks_stockName}
    Verify Page Contains Element  ${KU_W_invest_USStocks_stockName}
    Sleep  2s
    Go Back
    Sleep  2s
    Scroll Untill View  ${KU_W_invest_USStocks_exploreMoreLink}
    Click Element  ${KU_W_invest_USStocks_stockInvestLink4}
    Wait For Element Visibility  ${KU_W_invest_USStocks_stockName}
    Verify Page Contains Element  ${KU_W_invest_USStocks_stockName}
    Sleep  2s
    Go Back
    # Explore More
    Wait For Element Visibility  ${KU_W_invest_USStocks_exploreMoreLink}
    Click Element  ${KU_W_invest_USStocks_exploreMoreLink}
    Wait For Element Visibility  ${KU_W_invest_USStocks_sortYear}
    Verify Element And Text  ${KU_W_invest_USStocks_sortYear}  ${e_invest_stocks_sortYear}
    Go Back
    # Zero Brokerage
    Verify Element And Text  ${KU_W_invest_USStocks_zeroBrokerageTitle}  ${e_invest_USStocks_zeroBrokerageTitle}
    Verify Element And Text  ${KU_W_invest_USStocks_zeroBrokerageDesc}  ${e_invest_USStocks_zeroBrokerageDesc}
    Verify Page Contains Image  ${KU_W_invest_USStocks_zeroCommissionImg}
    Verify Page Contains Image  ${KU_W_invest_USStocks_zeroBrokInfoLink}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_USStocks_zeroBrokInfoLink}
    Click Element  ${KU_W_invest_USStocks_zeroBrokInfoLink}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_USStocks_zeroBrokInfoMsg}
    Verify Element And Text  ${KU_W_invest_USStocks_zeroBrokInfoMsg}  ${e_invest_USStocks_zeroBrokInfoMsg}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_USStocks_learnMorePopupLink}
    Click Element  ${KU_W_invest_USStocks_learnMorePopupLink}
    Switch To Window
    Reload Page
    Scroll Untill View  ${KU_W_invest_USStocks_zeroBrokInfoLink}
    # Stress Free Investing
    Scroll Untill View  ${KU_W_invest_USStocks_stressFreeHeader}
    Verify Element And Text  ${KU_W_invest_USStocks_stressFreeHeader}  ${e_invest_USStocks_stressFreeHeader}
    Verify Element And Text  ${KU_W_invest_USStocks_stressFreeDesc}  ${e_invest_USStocks_stressFreeDesc}
    Verify Page Contains Image  ${KU_W_invest_USStocks_stressFreeImg}
    # Easy Tax Filing
    Scroll Untill View  ${KU_W_invest_USStocks_taxFilingHeader}
    Verify Element And Text  ${KU_W_invest_USStocks_taxFilingHeader}  ${e_invest_USStocks_taxFilingHeader}
    Verify Element And Text  ${KU_W_invest_USStocks_taxFilingDesc}  ${e_invest_USStocks_taxFilingDesc}
    Verify Page Contains Image  ${KU_W_invest_USStocks_taxFilingImg}
    # 3 Steps
    Scroll Untill View  ${KU_W_invest_USStocks_investmentProcessTitle}
    Verify Element And Text  ${KU_W_invest_USStocks_investmentProcessTitle}  ${e_invest_USStocks_investmentProcessTitle}
    Verify Element And Text  ${KU_W_invest_USStocks_investmentProcessSubTitle}  ${e_invest_USStocks_investmentProcessSubTitle}
    # 1
    Verify Element And Text  ${KU_W_invest_USStocks_investmentProcessNo1}  ${e_invest_USStocks_investmentProcessNo1}
    Verify Page Contains Image  ${KU_W_invest_USStocks_investmentProcessImg1}  
    Verify Element And Text  ${KU_W_invest_USStocks_investmentProcessLabel1}  ${e_invest_USStocks_investmentProcessLabel1}
    # 2
    Verify Element And Text  ${KU_W_invest_USStocks_investmentProcessNo2}  ${e_invest_USStocks_investmentProcessNo2}
    Verify Page Contains Image  ${KU_W_invest_USStocks_investmentProcessImg2} 
    Verify Element And Text  ${KU_W_invest_USStocks_investmentProcessLabel2}  ${e_invest_USStocks_investmentProcessLabel2}
    # 3
    Verify Element And Text  ${KU_W_invest_USStocks_investmentProcessNo3}  ${e_invest_USStocks_investmentProcessNo3}
    Verify Page Contains Image  ${KU_W_invest_USStocks_investmentProcessImg3} 
    Verify Element And Text  ${KU_W_invest_USStocks_investmentProcessLabel3}  ${e_invest_USStocks_investmentProcessLabel3}
    # FAQ
    # 1
    Scroll Untill View  ${KU_W_invest_USStocks_faq_question1}
    Verify Element And Text  ${KU_W_invest_USStocks_faq_question1}  ${e_invest_USStocks_faq_question1}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_invest_USStocks_faq_question1}
    Click Element  ${KU_W_invest_USStocks_faq_question1}
    Verify Element And Text  ${KU_W_invest_USStocks_faq_answer1}  ${e_invest_USStocks_faq_answer1}
    Verify Page Contains Image  ${KU_W_invest_USStocks_faq_arrowImg1}
    Click Element  ${KU_W_invest_USStocks_faq_arrowImg1}
    # 2
    Scroll Untill View  ${KU_W_invest_USStocks_faq_question2}
    Verify Element And Text  ${KU_W_invest_USStocks_faq_question2}  ${e_invest_USStocks_faq_question2}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_invest_USStocks_faq_question2}
    Click Element  ${KU_W_invest_USStocks_faq_question2}
    Wait For Element Visibility  ${KU_W_invest_USStocks_faq_answer2}
    Verify Element And Text  ${KU_W_invest_USStocks_faq_answer2}  ${e_invest_USStocks_faq_answer2}
    Verify Page Contains Image  ${KU_W_invest_USStocks_faq_arrowImg2}
    Click Element  ${KU_W_invest_USStocks_faq_arrowImg2}
    # 3
    Scroll Untill View  ${KU_W_invest_USStocks_faq_question3}
    Verify Element And Text  ${KU_W_invest_USStocks_faq_question3}  ${e_invest_USStocks_faq_question3}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_invest_USStocks_faq_question3}
    Click Element  ${KU_W_invest_USStocks_faq_question3}  
    Wait For Element Visibility  ${KU_W_invest_USStocks_faq_answer3}
    Verify Element And Text  ${KU_W_invest_USStocks_faq_answer3}  ${e_invest_USStocks_faq_answer3}
    Verify Page Contains Image  ${KU_W_invest_USStocks_faq_arrowImg3}
    Click Element  ${KU_W_invest_USStocks_faq_arrowImg3}
    # View All
    Scroll Untill View  ${KU_W_invest_USStocks_faq_viewAll}
    Verify Question On FAQBOT Icon  ${KU_W_invest_USStocks_faq_viewAll}  ${e_invest_USStocks_botQA_ques1}
    # Go Global with US stocks
    Scroll Untill View  ${KU_W_invest_USStocks_goGlobalTitle}
    Verify Element And Text  ${KU_W_invest_USStocks_goGlobalTitle}  ${e_invest_USStocks_goGlobalTitle}
    Verify Element And Text  ${KU_W_invest_USStocks_goGlobalSubTitle}  ${e_invest_USStocks_signupDetail}
    Wait For Element Visibility  ${KU_W_invest_USStocks_goGlobalStartTodayBtn}
    Click Element  ${KU_W_invest_USStocks_goGlobalStartTodayBtn}
    Verify Login Page
    Verify Page Contains Image  ${KU_W_invest_USStocks_goGlobalImg}
    Verify Question On FAQBOT Icon  ${KU_W_faqbot_icon}  ${e_invest_USStocks_botQA_ques1}
    Verify Google Play & Apple Store Icons

Verify Filter For US Stocks
    Verify Element And Text  ${KU_W_invest_USStocks_defaultFilter}  ${e_invest_US_stocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_USStocks_defaultFilter}
    Click Element  ${KU_W_invest_USStocks_defaultFilter}
    Wait For Element Visibility  ${KU_W_invest_USStocks_healthcareFilter} 
    Click Element  ${KU_W_invest_USStocks_healthcareFilter}
    Verify Element And Text  ${KU_W_invest_USStocks_defaultFilter}  ${e_invest_USStocks_healthcareFilter}
    Click Element  ${KU_W_invest_USStocks_clearAll}
    Verify Element And Text  ${KU_W_invest_USStocks_defaultFilter}  ${e_invest_US_stocks_defaultFilter}

Search US Stocks and Verify 
    # Verify Search functionality
    [Arguments]  ${USStockName}
    Wait For Element Visibility  ${KU_W_invest_US_SETFAnd52WUS_searchTextField}
    Click Element  ${KU_W_invest_US_SETFAnd52WUS_searchTextField}
    Input Text  ${KU_W_invest_USStocks_searchField}  ${USStockName}  clear=true
    Press Enter Key  ${KU_W_invest_USStocks_searchField}
    Sleep  2s

Verify US Stocks Details Screen
    [Arguments]  ${stockLink}
    Wait For Element Visibility  ${stockLink}
    Click Element  ${stockLink}
    Sleep  2s
    Wait For Element Visibility  ${KU_W_invest_USStocks_stockName}
    Verify Page Contains Element  ${KU_W_invest_USStocks_stockName}
    # Explore Tags
    Verify Explore Tags For Stocks And USStocks  ${KU_W_invest_USStocks_sortYear}
    Wait For Element Visibility  ${KU_W_invest_USStocks_marketPrice}
    Verify Page Contains Element  ${KU_W_invest_USStocks_marketPrice}
    Sleep  2s
    Verify Page Contains Element  ${KU_W_invest_USStocks_change%}
    Verify Page Contains Element  ${KU_W_invest_USStocks_timestamp}  
    Verify Page Contains Element  ${KU_W_invest_USStocks_gainloss%} 
    Verify Share PDF And Watchlist Option  ${KU_W_invest_USStocks_shareIcon}  ${KU_W_invest_USStocks_sharePopup}  ${KU_W_invest_USStocks_pdfIcon}  ${KU_W_invest_USStocks_watchlistIcon}
    # Transact Stocks
    Wait For Element Visibility  ${KU_W_invest_USStocks_transactStocksTitle}
    Verify Element And Text  ${KU_W_invest_USStocks_transactStocksTitle}  ${e_invest_USStocks_transactStocksTitle}
    Wait For Element Visibility  ${KU_W_invest_USStocks_transactStocksSubTitle}
    Verify Element And Text  ${KU_W_invest_USStocks_transactStocksSubTitle}  ${e_invest_USStocks_transactStocksSubTitle}
    Verify Page Contains Image  ${KU_W_invest_USStocks_vestedLogo}
    Wait For Element Visibility  ${KU_W_invest_USStocks_buyBtn}
    Verify Element And Text  ${KU_W_invest_USStocks_buyBtn}  ${e_invest_USStocks_buyBtn} 
    Click Element  ${KU_W_invest_USStocks_buyBtn}
    Verify Login Page
    Sleep  3s
    Wait For Element Visibility  ${KU_W_invest_USStocks_importHoldingsBtn}
    Verify Element And Text  ${KU_W_invest_USStocks_importHoldingsBtn}  ${e_invest_USStocks_importHoldingsBtn}
    Click Element  ${KU_W_invest_USStocks_importHoldingsBtn}
    Verify Login Page
    # FAQ
    Verify Presence Of FAQBOT Icon
    # Graph Section
    Verify Performance Chart For Stocks And Crypto  ${KU_W_invest_USStocks_performanceChart}
    # Live Market Hours is pending
    # Compare with other Stocks
    Verify Compare With Other
    Verify Add Option   ${KU_W_invest_USStocks_addBtn}  ${KU_W_invest_USStocks_addStocksPopupHeader}  ${KU_W_invest_USStocks_closePopup}
    # Company URL and SubTitle
    Scroll Untill View  ${KU_W_invest_USStocks_companyHeader}
    Verify Page Contains Element  ${KU_W_invest_USStocks_companyHeader}
    Verify Element And Text  ${KU_W_invest_USStocks_companyHeader_about}  ${e_invest_USStocks_companyHeader_about}
    Verify Page Contains Element  ${KU_W_invest_USStocks_companySubHeader}
    Go Back