*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin MF Page
    Log To Console  Mutual Fund
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Verify Page Contains Element On Android  ${KU_A_invest_MF_imgfromExplore}
    Verify Page Contains Element On Android  ${KU_A_invest_MF_title}
    Wait And Click Element On Android  ${KU_A_invest_MF_title}
    # Verify Signup Link And Kuvera Logo
    # Verify Sort And Filter Button  ${e_invest_MF_filter}
    # Verify Presence Of Search Box WatchList Growth Button 
    # Verify Navigation To Tabs For Funds
    # Go Back
    # Go Back
    # Wait And Click Element On Android  ${KU_A_invest_MF_title}
    FOR  ${i}  IN RANGE  1  6
        # Iterate the Mutual Fund detail screen
        ${mutualFund}  Get Json Values On Android  $.MutualFunds.f${i}  Resources/TestData/MutualFunds.json 
        Log To Console  ${mutualFund}
        ${expectedTitle1} =  Replace Characters  ${mutualFund}  '  " "
        Log To Console  ${expectedTitle1}
        # Verify Mutual Fund Details Page On Android  ${mutualFund}
    END

Verify Search Functionality
    [Arguments]  ${fundName}
    Wait And Click Element On Android  ${KU_A_inputField}
    Input Text  ${KU_A_inputField}  ${fundName}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_invest_MF_searchIcon}

Verify Mutual Fund Details Page On Android
    [Arguments]  ${mutualFund}
    Verify Search Functionality  ${mutualFund}
    Run Keyword If  ${mutualFund} == ['Tata Digital']  Wait And Click Element On Android  ${KU_A_invest_MF_dividendIcon}
    ${mfName} =  xpath=//*[contains(text(),'${mutualFund}')]
    ${KU_A_inputField} =  xpath=//*[@class='android.widget.EditText']
    Verify Page Contains Element On Android  ${mfName}
    # Run Keyword If  ${mutualFund} == ['Axis Bluechip']  Verify Filter Navigation For Second MF 
    # ...    ELSE  Verify Filters For MF
    Verify WatchList Button Of Invest
    Verify Period Wise Graphs 
    Verify AUM And TER info
    Verify Invest Now Button  ${mfName}  ${e_invest_MF_sipMinVal1}
    Verify Compare With Other Section  ${mfName}
    Verify Add Fund
    Verify Past Performance  ${mfName}
    Verify See Fund holdings And Other Info
    Go Back

Verify WatchList Button Of Invest
    Wait And Click Element On Android  ${KU_A_watchListBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_funds_watchlistTitle}
    Go Back
    
Verify Period Wise Graphs  
    Wait And Click Element On Android  ${KU_A_invest_1MBtn}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}
    Wait And Click Element On Android  ${KU_A_invest_6MBtn}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}
    Wait And Click Element On Android  ${KU_A_invest_1YBtn}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}
    Wait And Click Element On Android  ${KU_A_invest_3YBtn}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}
    Wait And Click Element On Android  ${KU_A_invest_5YBtn}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_graphImg}

Verify AUM And TER info
    Verify Text On Page  ${e_invest_MF_AUM}
    Wait And Click Element On Android  ${KU_A_invest_infoImg}
    Go Back
    Verify Text On Page  ${e_invest_MF_TER}
    Wait And Click Element On Android  ${KU_A_invest_infoImg}
    Go Back

Verify Invest Now Button
    [Arguments]  ${MFName}  ${SIPminVal}
    Wait And Click Element On Android  ${KU_A_invest_MF_investNowBtn}
    Verify Page Contains Element On Android  ${MFName}
    Verify Text On Page  ${e_invest_MF_sipAmt}
    Verify Text On Page  ${SIPminVal} 
    Wait And Click Element On Android  ${KU_A_invest_MF_SIPInputField}
    Input Text  ${KU_A_invest_MF_SIPInputField}  ${e_invest_MF_sipVal}
    Hide Keyboard
    Wait And Click Element On Android  ${KU_A_invest_MF_SIP_lumpsum_InvestBtn}
    Verify Login Page And Go Back 
    Verify Text On Page  ${e_invest_MF_lumpsumAmt}
    Verify Text On Page  ${e_invest_MF_minLumpsumAmt}
    Wait And Click Element On Android  ${KU_A_invest_MF_lumpsumInputField}
    Input Text  ${KU_A_invest_MF_lumpsumInputField}  ${e_invest_MF_lumpsumval}
    Hide Keyboard
    Wait And Click Element On Android  ${KU_A_invest_MF_addToCartBtn}
    Verify Login Page And Go Back
    Go Back

Verify Compare With Other Section
    Swipe By Percent  90  90  50  50  9000
    [Arguments]  ${fundName}
    Verify Text On Page  ${e_invest_MF_compareWithOtherLabel} 
    Verify Page Contains Element On Android  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_ascArrow1}
    Verify Page Contains Element On Android  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow1}
    Verify Page Contains Element On Android  ${fundName} 
    Wait And Click Element On Android  ${KU_A_invest_ascArrow2}
    Verify Page Contains Element On Android  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow2}
    Verify Page Contains Element On Android  ${fundName} 
    Swipe By Percent  75  75  30  75  15000
    Wait And Click Element On Android  ${KU_A_invest_ascArrow3}
    Verify Page Contains Element On Android  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow2}
    Verify Page Contains Element On Android  ${fundName} 
    FOR  ${j}  IN RANGE  1  3
        Wait And Click Element On Android  ${KU_A_invest_ascArrow4}
        Verify Page Contains Element On Android  ${fundName}
        Wait And Click Element On Android  ${KU_A_invest_descArrow3}
        Verify Page Contains Element On Android  ${fundName} 
        Wait And Click Element On Android  ${KU_A_invest_ascArrow5}
        Verify Page Contains Element On Android  ${fundName}
        Wait And Click Element On Android  ${KU_A_invest_descArrow4}
        Verify Page Contains Element On Android  ${fundName} 
        Swipe By Percent  75  75  30  75  15000
    END

Verify Add Fund
    Swipe By Percent  50  50  40  40  9000
    Wait And Click Element On Android  ${KU_A_invest_MF_addFundBtn}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_MF_searchFundLabel} 
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_invest_MF_closePopup}

Verify Past Performance 
    [Arguments]  ${fund}
    # Past Performance
    Swipe By Percent  90  90  50  50  9000
    Wait And Click Element On Android  ${KU_A_invest_MF_pastPerformance}
    Verify Text On Page  ${e_invest_MF_pastPerformDesc}
    Verify Text On Page  ${e_invest_MF_hadUInvestedLabel}
    Verify Text On Page  ${e_invest_MF_investedAmt} 
    Verify Text On Page  ${e_invest_MF_overTheLast} 
    Verify Text On Page  ${e_invest_MF_yourReturns}
    Verify Text On Page  ${e_invest_1Y}
    Verify Text On Page  ${e_invest_3Y}
    Swipe By Percent  50  50  40  40  9000
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_all}
    Verify Page Contains Element On Android  ${fund}
    Wait And Click Element On Android  ${KU_A_invest_MF_pastPerformance}

Verify Past Performance For Mirae Asset
    [Arguments]  ${fund}
    # Past Performance
    Swipe By Percent  90  90  50  50  9000
    Wait And Click Element On Android  ${KU_A_invest_MF_pastPerformance}
    Verify Text On Page  ${e_invest_MF_pastPerformDesc}
    Verify Text On Page  ${e_invest_MF_hadUInvestedLabel}
    Verify Text On Page  ${e_invest_MF_investedAmt} 
    Verify Text On Page  ${e_invest_MF_overTheLast} 
    Verify Text On Page  ${e_invest_MF_yourReturns}
    Verify Text On Page  ${e_invest_1Y}
    Verify Text On Page  ${e_invest_3Y}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_all}
    Verify Page Contains Element On Android  ${fund}
    Wait And Click Element On Android  ${KU_A_invest_MF_pastPerformance}

Verify See Fund holdings And Other Info
    Wait And Click Element On Android  ${KU_A_invest_MF_seeFundHoldings}
    Verify Text On Page  ${e_invest_MF_topHoldings}
    Wait And Click Element On Android  ${KU_A_invest_MF_seeFundHoldings}
    Verify Other information

Verify Other information
    Wait And Click Element On Android  ${KU_A_invest_MF_otherInfo}
    Verify Text On Page  ${e_invest_MF_minSIPLabel}
    Verify Text On Page  ${e_invest_MF_minLumpsumLabel}
    Verify Text On Page  ${e_invest_MF_addLumpsumLabel}

Verify Filter Navigation For Second MF 
    Wait And Click Element On Android  ${KU_A_invest_MF_equityBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_MF_largeCapBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_topSearched}
    Swipe By Percent  45  15  20  15  15000
    Verify Page Contains Element On Android  ${KU_A_invest_topSearched}
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_investorChoice}
    Verify Page Contains Element On Android  ${KU_A_invest_investorChoice}
    Go Back
    Swipe By Percent  50  20  30  20  15000
    Swipe By Percent  50  20  30  20  15000
    Wait And Click Element On Android  ${KU_A_invest_MF_topWatchlistedBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_watchlistMenu}
    Go Back

Verify Filters For MF
    [Arguments]  ${filter1}  ${filter2}
    Wait And Click Element On Android  ${filter1}
    Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    Go Back
    Wait And Click Element On Android  ${filter2}
    Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    Go Back