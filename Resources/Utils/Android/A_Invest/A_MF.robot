*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin MF Page
    Log To Console  MF
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
    Verify Fund Details Screen On Android


Verify Fund Details Screen On Android
    # Iterate the Mutual Fund detail screen
    FOR  ${i}  IN RANGE  1  6
        @{mutualFund} =  Get Json Values On Android  $.MutualFunds.f${i}  Resources/TestData/MutualFunds.json 
        Log To Console  ${mutualFund}
        Verify Search Functionality  ${mutualFund}
        Run Keyword If    ${mutualFund} == ['${e_invest_MF_mf1}']  Verify Tata Digital India DR MF Details Page
        
    END
    Go Back 

Verify Search Functionality
    [Arguments]  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_searchBox}
    Input Text  ${KU_A_invest_searchBox}  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_MF_searchIcon}

Verify Tata Digital India DR MF Details Page
    Wait And Click Element On Android  ${KU_A_invest_MF_dividendIcon}
    Wait And Click Element On Android  ${KU_A_invest_MF_mf1}
    Verify Text On Page  ${e_invest_MF_mf1}
    # Wait And Click Element On Android  ${KU_A_invest_MF_equityBtn}
    # Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    # Go Back
    # Wait And Click Element On Android  ${KU_A_invest_MF_sectoralBtn}
    # Verify Page Contains Element On Android  ${KU_A_invest_allFundsMenu}
    # Go Back
    # Verify WatchList Button Of Invest
    # Verify Period Wise Graphs 
    # Verify AUM And TER info
    Verify Invest Now Button
    Verify Compare With Other Fund  ${e_invest_MF_mf1Name}
    


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
    Wait And Click Element On Android  ${KU_A_inputField}
    Input Text  ${KU_A_inputField}  ${e_invest_MF_sipVal}
    Wait And Click Element On Android  ${KU_A_invest_MF_investNowBtn}
    Verify Login Page And Go Back 
    Verify Text On Page  ${e_invest_MF_lumpsumAmt}
    Verify Text On Page  ${e_invest_MF_minLumpsumAmt}
    Input Text  ${KU_A_inputField}  ${e_invest_MF_lumpsumval}
    Wait And Click Element On Android  ${KU_A_invest_MF_addToCartBtn}
    Verify Login Page And Go Back
    Go Back

Verify Compare With Other Fund
    Swipe By Percent  90  90  50  50  9000
    [Arguments]  ${fundName}
    Verify Text On Page  ${e_invest_MF_compareWithOtherLabel} 
    Verify Text On Page  ${fundName}
    Verify Page Contains Element On Android  ${KU_A_invest_1YBtn}
    Wait And Click Element On Android  ${KU_A_invest_ascArrow1}
    Verify Text On Page  ${fundName}
    Wait And Click Element On Android  ${KU_A_invest_descArrow1}
    Verify Text On Page  ${fundName}  