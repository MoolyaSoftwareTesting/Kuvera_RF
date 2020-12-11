*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Bank And PSU Bonds Landing Page
    Click Element  ${KU_W_bank&PSUBondsTitle}
    Wait For Element Visibility  ${KU_W_invest_fundsScreenTitle} 
    Verify Language Switch Login And Signup Link  
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_mf_searchBarText}  ${KU_W_sort}
    Verify Element And Text  ${KU_W_invest_fundsScreenTitle}  ${e_invest_bank&PSU_screenText}
    Verify Filter And Clear All
    Verify Element And Text  ${KU_W_invest_sortYear}   ${e_invest__funds_sortYearText}
    Verify Element And Text  ${KU_W_invest_filteredFund}   ${e_invest_bank&PSU_filteredFundText}
    Verify Page Contains Element  ${KU_W_invest_watchListBtn} 
    Click Element  ${KU_W_invest_watchListBtn} 
    # Watchlist
    Verify Element And Text  ${KU_W_invest_watchlistHeading}  ${e_invest_watchlistHeadingText} 
    Verify Filter Navigation For Funds
    Go Back