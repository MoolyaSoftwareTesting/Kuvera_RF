*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin SaveSmart Page
    Log To Console  SaveSmart
    Click On SaveSmart From Explore More
    Verify Title And SubTitle Of SaveSmart
    Verify Signup Link And Kuvera Logo
    Verify Start SaveSmart Today  ${KU_A_invest_SS_minimumAmt}
    Click On SaveSmart From Explore More
    Verify Return Calculator
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn} 

Verify Return Calculator
    Swipe By Percent  85  85  10  10  12000
    Verify Text On Page  ${e_invest_SS_notYourDadSavings}
    Verify Text On Page  ${e_invest_SS_smallAlternativeToSavings}
    Verify Text On Page  ${e_invest_SS_enterAmtToCheckReturns}
    Verify Text On Page  ${e_invest_SS_saveSmartLabel}
    Verify Text On Page  ${e_invest_SS_1YearLabel}
    Verify Text On Page  ${e_invest_SS_3YearLabel}
    Verify Text On Page  ${e_invest_SS_5YearLabel}
    Verify Text On Page  ${e_invest_SS_1YearVal}
    Verify Text On Page  ${e_invest_SS_2YearVal}
    Verify Text On Page  ${e_invest_SS_3YearVal}
    Verify Text On Page  ${e_invest_SS_mutualFundRisk}
    Verify Text On Page  ${e_invest_SS_periodLabel}
    Verify Text On Page  ${e_invest_SS_3MonthsLabel}
    Verify Text On Page  ${e_invest_SS_3YearsLabel}
    Verify Text On Page  ${e_invest_SS_catAvg}
    Verify Text On Page  ${e_invest_SS_3MonthsAvg}
    Verify Text On Page  ${e_invest_SS_1YearAvg}
    Verify Text On Page  ${e_invest_SS_3YearsAvg}


Click On SaveSmart From Explore More
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Verify Text On Page  ${e_invest_exploreMore}
    Swipe By Percent  85  85  20  85  15000
    Verify Page Contains Element On Android  ${KU_A_invest_SS_linkFromExplore}
    Wait And Click Element On Android  ${KU_A_invest_SS_linkFromExplore}