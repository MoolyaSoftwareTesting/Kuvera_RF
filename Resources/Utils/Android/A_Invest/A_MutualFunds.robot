*** Settings ***

Library     AppiumLibrary


*** Keywords ***

Verify Android PreLogin MF Page
    Log To Console  Mutual Fund
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Verify Page Contains Element On Android  ${KU_A_invest_MF_imgfromExplore}
    Verify Page Contains Element On Android  ${KU_A_invest_MF_title}
    Wait And Click Element On Android  ${KU_A_invest_MF_title}
    Verify Signup Link And Kuvera Logo
    Verify Sort And Filter Button  ${e_invest_MF_filter}
    Verify Presence Of Search Box WatchList Growth Button 
    Verify Navigation To Tabs For Funds
    Go Back
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_MF_title}
    FOR  ${i}  IN RANGE  1  6
        # Iterate the Mutual Fund detail screen
        ${mutualFundFromJson}  Get Json Values On Android  $.MutualFunds.f${i}  Resources/TestData/MutualFunds.json 
        Log To Console  ${mutualFundFromJson}
        ${mutualFdString} =  Convert To String  ${mutualFundFromJson}
        ${mutualFName} =  Get Fund Or Stock Name  ${mutualFdString}
        ${mutualFundConvertedN} =  Name Conversion Of Mutual Fund  ${mutualFdString}
        Verify Mutual Fund Details Page On Android  ${mutualFundConvertedN}  ${mutualFName}
    END

Verify Mutual Fund Details Page On Android
    [Arguments]  ${mutualFundConvertedN}  ${fName}
    Run Keyword If  ${mutualFundConvertedN} == ['${e_invest_MF_mf1}']  Wait And Click Element On Android  ${KU_A_invest_MF_dividendIcon}
    ${mutualFundName} =  Get Fund Or Stock Name  ${mutualFundConvertedN}
    Verify Search Functionality  ${mutualFundName}
    ${text} =  Set Variable  xpath=(//*[@text=
    ${fundName} =  Set Variable  '${mutualFundName}'])[2]
    ${mfName} =  Set Variable  ${text}${fundName}
    Verify Page Contains Element On Android  ${mfName}
    Wait And Click Element On Android  ${mfName}
    Verify Text On Page  ${fName}
    IF  ${mutualFundConvertedN} == ['${e_invest_MF_mf1}']
        Verify Filters For MF And Stocks  ${KU_A_invest_MF_equityBtn}  ${KU_A_invest_MF_sectoralBtn}  ${KU_A_invest_allFundsMenu}
    ELSE IF  ${mutualFundConvertedN} == ['${e_invest_MF_mf2}']  
        Verify Filter Navigation For Second MF 
    ELSE IF  ${mutualFundConvertedN} == ['${e_invest_MF_mf3}']  
        Verify Filters For MF And Stocks  ${KU_A_invest_MF_hybridBtn}  ${KU_A_invest_MF_aggHybridBtn}  ${KU_A_invest_allFundsMenu}
    ELSE IF  ${mutualFundConvertedN} == ['${e_invest_MF_mf4}'] 
        Verify Filters For MF And Stocks  ${KU_A_invest_MF_solutionOrientedBtn}  ${KU_A_invest_MF_childrensFundBtn}  ${KU_A_invest_allFundsMenu}
    ELSE IF  ${mutualFundConvertedN} == ['${e_invest_MF_mf5}'] 
        Verify Filters For MF And Stocks  ${KU_A_invest_MF_debtBtn}  ${KU_A_invest_MF_ICICIfilter2Btn}  ${KU_A_invest_allFundsMenu}
    END 
    Verify WatchList Button Of Invest
    Verify Period Wise Graphs  ${KU_A_invest_1MBtn}  ${KU_A_invest_6MBtn}  ${KU_A_invest_1YBtn}  ${KU_A_invest_3YBtn}  ${KU_A_invest_5YBtn}
    Verify AUM And TER info
    Verify Invest Now Button  ${fName}
    # Compare to Other section has also fund name in different format for different funds - it has been skipped now
    # Verify Compare With Other Section  ${e_invest_MF_compareWithOtherLabel}  ${mfName}
    Swipe By Percent  90  90  45  45  9000
    Verify Add Fund Or Stock  ${KU_A_invest_MF_addFundBtn}  ${KU_A_invest_MF_searchFundLabel}
    IF  ${mutualFundConvertedN} == ['${e_invest_MF_mf3}']
        Verify Past Performance For Third MF
    ELSE 
        Verify Past Performance
    END
    Verify See Fund holdings And Other Info
    Go Back

Verify WatchList Button Of Invest
    Wait And Click Element On Android  ${KU_A_watchListBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_funds_watchlistTitle}
    Go Back
    
Verify AUM And TER info
    Verify Text On Page  ${e_invest_MF_AUM}
    Wait And Click Element On Android  ${KU_A_invest_infoImg}
    Go Back
    Verify Text On Page  ${e_invest_MF_TER}
    Wait And Click Element On Android  ${KU_A_invest_infoImg}
    Go Back

Verify Invest Now Button
    [Arguments]  ${FName}
    Wait And Click Element On Android  ${KU_A_invest_MF_investNowBtn}
    Verify Text On Page  ${FName}
    Verify Text On Page  ${e_invest_MF_sipAmt}
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

Verify Past Performance 
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
    Wait And Click Element On Android  ${KU_A_invest_MF_pastPerformance}

Verify Past Performance For Third MF 
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
    Wait And Click Element On Android  ${KU_A_invest_MF_pastPerformance}

Verify See Fund holdings And Other Info
    Wait And Click Element On Android  ${KU_A_invest_MF_fundHoldingsArrow}
    Verify Text On Page  ${e_invest_MF_topHoldings}
    Wait And Click Element On Android  ${KU_A_invest_MF_fundHoldingsClosingArrow}
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

Name Conversion Of Mutual Fund
    [Arguments]  ${mf}
    ${containsGrowth} =  Run Keyword And Return Status  Should Contain  ${mf}  ${e_invest_MF_growthLabel}
    IF  ${containsGrowth}  
        ${mutualFName} =  Replace String  ${mf}  ${e_invest_MF_growthDirectPlan}  ${e_invest_MF_growthDirectPlanShort}
    ELSE
        ${mutualFName} =  Replace String  ${mf}  ${e_invest_MF_dividendDirectPlan}  ${e_invest_MF_dividendDirectPlanShort}  
    END
    ${containsPru} =  Run Keyword And Return Status  Should Contain  ${mutualFName}  ${e_invest_MF_pruLabel}
    IF  ${containsPru} 
        ${mutualFName} =  Replace String  ${mutualFName}  ${e_invest_MF_prudential}  ${e_invest_MF_pruLabel}
    END
    ${containsAsset} =  Run Keyword And Return Status  Should Contain  ${mutualFName}  ${e_invest_MF_assetLabel}
    IF  ${containsAsset} 
        ${mutualFName} =  Replace String  ${mutualFName}  ${e_invest_MF_assetLabel}  ${EMPTY}
        ${mutualFName} =  Replace String Using Regexp  ${mutualFName}  ${SPACE}+  ${SPACE}
    END
    [Return]  ${mutualFName}