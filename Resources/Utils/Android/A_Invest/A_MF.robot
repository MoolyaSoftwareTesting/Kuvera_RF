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

    Run Keyword If  ['${e_invest_MF_mf1}'] == ${mutualFund1}  Verify Tata Digital India DR MF Details Page
    Run Keyword If  ['${e_invest_MF_mf2}'] == ${mutualFund2}  Verify Axis Bluechip MF Details Page
    Run keyword If  ['${e_invest_MF_mf3}'] == ${mutualFund3}  Log To Console  Pending
    Run keyword If  ['${e_invest_MF_mf4}'] == ${mutualFund4}  Log To Console  Pending
    Run keyword If  ['${e_invest_MF_mf5}'] == ${mutualFund5}  Log To Console  Pending
    ...    ELSE  Log To Console  Completed
    
    
Verify Search Functionality
    [Arguments]  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_searchBox}
    Input Text  ${KU_A_inputField}  ${fundName}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_invest_MF_searchIcon}

Verify Tata Digital India DR MF Details Page
    Log To Console  ${e_invest_MF_mf1}
    Wait And Click Element On Android  ${KU_A_invest_MF_dividendIcon}
    Verify Search Functionality  ${e_invest_MF_mf1}
    Wait And Click Element On Android  ${KU_A_invest_MF_mf1}
    Verify Text On Page  ${e_invest_MF_mf1}
    Wait And Click Element On Android  ${KU_A_invest_MF_equityBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    Go Back
    Wait And Click Element On Android  ${KU_A_invest_MF_sectoralBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    Go Back
    Verify WatchList Button Of Invest
    Verify Period Wise Graphs 
    Verify AUM And TER info
    Verify Invest Now Button
    Verify Compare With Other Section  ${e_invest_MF_mf1Name}
    Verify Add Fund
    Verify Past Performance  ${KU_A_invest_MF_mf1}
    Verify See Fund holdings And Other Info
    Go Back
    
Verify Axis Bluechip MF Details Page
    Log To Console  ${e_invest_MF_mf2}
    Verify Search Functionality  ${e_invest_MF_mf2}
    Wait And Click Element On Android  ${KU_A_invest_MF_mf2}
    Verify Text On Page  ${e_invest_MF_mf2}
    Verify WatchList Button Of Invest
    # Verify Period Wise Graphs 
    Verify AUM And TER info
    # Verify Invest Now Button
    Verify Compare With Other Section  ${e_invest_MF_mf2Name}
    Swipe By Percent  50  50  40  40  9000
    Verify Add Fund
    Verify Past Performance  ${KU_A_invest_MF_mf2}
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
    Wait And Click Element On Android  ${KU_A_invest_MF_investNowBtn}
    Verify Text On Page  ${e_invest_MF_mf1}
    Verify Text On Page  ${e_invest_MF_sipAmt}
    Verify Text On Page  ${e_invest_MF_sipMinVal} 
    Wait And Click Element On Android  ${KU_A_SIPInputField}
    Input Text  ${KU_A_SIPInputField}  ${e_invest_MF_sipVal}
    Hide Keyboard
    Wait And Click Element On Android  ${KU_A_invest_MF_investNowBtn}
    Verify Login Page And Go Back 
    Verify Text On Page  ${e_invest_MF_lumpsumAmt}
    Verify Text On Page  ${e_invest_MF_minLumpsumAmt}
    Wait And Click Element On Android  ${KU_A_lumpsumInputField}
    Input Text  ${KU_A_lumpsumInputField}  ${e_invest_MF_lumpsumval}
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
    # Add Fund
    Wait And Click Element On Android  ${KU_A_invest_MF_addFundBtn}
    Verify Page Contains Element On Android  ${KU_A_invest_MF_searchFundLabel}
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

    

    


