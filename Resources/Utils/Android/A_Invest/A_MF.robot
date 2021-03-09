*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin MF Page
    Log To Console  MF
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
    Verify Fund Details Screen On Android


Verify Fund Details Screen On Android
    # Iterate the Mutual Fund detail screen
    ${mutualFund1}  Get Json Values On Android  $.MutualFunds.f1  Resources/TestData/MutualFunds.json 
    ${mutualFund2}  Get Json Values On Android  $.MutualFunds.f2  Resources/TestData/MutualFunds.json 
    ${mutualFund3}  Get Json Values On Android  $.MutualFunds.f3  Resources/TestData/MutualFunds.json 
    ${mutualFund4}  Get Json Values On Android  $.MutualFunds.f4  Resources/TestData/MutualFunds.json 
    ${mutualFund5}  Get Json Values On Android  $.MutualFunds.f5  Resources/TestData/MutualFunds.json 

    Verify First MF Details Page  ${mutualFund1}
    Verify Second MF Details Page  ${mutualFund2}
    Verify Third MF Details Page  ${mutualFund3}
    Verify Fourth MF Details Page  ${mutualFund4}
    Verify Fifth MF Details Page  ${mutualFund5} 
    
    
Verify Search Functionality
    [Arguments]  ${fundName}
    Wait And Click Element On Android  ${KU_A_inputField}
    Input Text  ${KU_A_inputField}  ${fundName}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_invest_MF_searchIcon}

Verify First MF Details Page
    [Arguments]  ${MFName1}
    Log To Console  ${MFName1}
    Wait And Click Element On Android  ${KU_A_invest_MF_dividendIcon}
    Verify Search Functionality  ${MFName1}
    Wait And Click Element On Android  ${KU_A_invest_MF_mf1}
    Verify Text On Page  ${e_invest_MF_mf1}
    Verify Filters For MF  ${KU_A_invest_MF_equityBtn}  ${KU_A_invest_MF_sectoralBtn}
    Verify WatchList Button Of Invest
    Verify Period Wise Graphs 
    Verify AUM And TER info
    Verify Invest Now Button  ${e_invest_MF_mf1}  ${e_invest_MF_sipMinVal1}
    Verify Compare With Other Section  ${e_invest_MF_mf1Name}
    Verify Add Fund
    Verify Past Performance  ${KU_A_invest_MF_mf1}
    Verify See Fund holdings And Other Info
    Go Back
    
Verify Second MF Details Page
    [Arguments]  ${MFName2}
    Log To Console  ${MFName2}
    Verify Search Functionality  ${MFName2}
    Wait And Click Element On Android  ${KU_A_invest_MF_mf2}
    Verify Text On Page  ${e_invest_MF_mf2}
    Verify Filters For Axis Bluechip
    Verify WatchList Button Of Invest
    Verify Period Wise Graphs 
    Verify AUM And TER info
    Verify Invest Now Button  ${e_invest_MF_mf2}  ${e_invest_MF_sipMinVal1}
    Verify Compare With Other Section  ${e_invest_MF_mf2Name}
    Verify Add Fund
    Verify Past Performance  ${KU_A_invest_MF_mf2}
    Verify See Fund holdings And Other Info
    Go Back
    
Verify Third MF Details Page
    [Arguments]  ${MFName3}
    Log To Console  ${MFName3}
    Verify Search Functionality  ${MFName3}
    Wait And Click Element On Android  ${KU_A_invest_MF_mf3}
    Verify Text On Page  ${e_invest_MF_mf3}
    Verify Filters For MF  ${KU_A_invest_MF_hybridBtn}  ${KU_A_invest_MF_aggHybridBtn}
    Verify WatchList Button Of Invest
    Verify Period Wise Graphs 
    Verify AUM And TER info
    Verify Invest Now Button  ${e_invest_MF_mf3}  ${e_invest_MF_sipMinVal2}
    Verify Compare With Other Section  ${e_invest_MF_mf3Name}
    Swipe By Percent  50  50  20  20  9000
    Verify Past Performance For Mirae Asset  ${KU_A_invest_MF_mf3}
    Verify See Fund holdings And Other Info
    Go Back

Verify Fourth MF Details Page
    [Arguments]  ${MFName4}
    Log To Console  ${MFName4}
    Verify Search Functionality  ${MFName4}
    Wait And Click Element On Android  ${KU_A_invest_MF_mf4}
    Verify Text On Page  ${e_invest_MF_mf4}
    Verify Filters For MF  ${KU_A_invest_MF_solutionOrientedBtn}  ${KU_A_invest_MF_childrensFundBtn}
    Verify WatchList Button Of Invest
    Verify Period Wise Graphs 
    Verify AUM And TER info
    Verify Invest Now Button  ${e_invest_MF_mf4}  ${e_invest_MF_sipMinVal2}
    Verify Compare With Other Section  ${e_invest_MF_mf4Name}
    Verify Add Fund
    Verify Past Performance  ${KU_A_invest_MF_mf4}
    Verify See Fund holdings And Other Info
    Go Back

Verify Fifth MF Details Page
    [Arguments]  ${MFName5}
    Log To Console  ${MFName5}
    Verify Search Functionality  ${MFName5}
    Verify Search Functionality  ${e_invest_MF_mf5}
    Wait And Click Element On Android  ${KU_A_invest_MF_mf5}
    Verify Text On Page  ${e_invest_MF_mf5}
    Verify Filters For MF  ${KU_A_invest_MF_debtBtn}  ${KU_A_invest_MF_ICICIfilter2Btn}
    Verify WatchList Button Of Invest
    Verify Period Wise Graphs 
    Verify AUM And TER info
    Verify Invest Now Button  ${e_invest_MF_mf5}  ${e_invest_MF_sipMinVal2}
    Verify Compare With Other Section  ${e_invest_MF_mf5Name}
    Verify Add Fund
    Verify Past Performance  ${KU_A_invest_MF_mf5}
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
    Verify Text On Page  ${MFName}
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
    Verify Text On Page  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_ascArrow1}
    Verify Text On Page  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow1}
    Verify Text On Page  ${fundName} 
    Wait And Click Element On Android  ${KU_A_invest_ascArrow2}
    Verify Text On Page  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow2}
    Verify Text On Page  ${fundName} 
    Swipe By Percent  75  75  30  75  15000
    Wait And Click Element On Android  ${KU_A_invest_ascArrow3}
    Verify Text On Page  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow2}
    Verify Text On Page  ${fundName} 
    FOR  ${j}  IN RANGE  1  3
        Wait And Click Element On Android  ${KU_A_invest_ascArrow4}
        Verify Text On Page  ${fundName}
        Wait And Click Element On Android  ${KU_A_invest_descArrow3}
        Verify Text On Page  ${fundName} 
        Wait And Click Element On Android  ${KU_A_invest_ascArrow5}
        Verify Text On Page  ${fundName}
        Wait And Click Element On Android  ${KU_A_invest_descArrow4}
        Verify Text On Page  ${fundName} 
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

Verify Filters For Axis Bluechip
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