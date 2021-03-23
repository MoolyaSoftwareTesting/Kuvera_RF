*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Gilt Funds Landing Page
    Log To Console  Gilt Fund
    Sleep  1s
    Wait For Element Visibility  ${KU_W_giltFundsTitle}
    Click Element  ${KU_W_giltFundsTitle}
    Wait For Element Visibility  ${KU_W_invest_fundsScreenTitle}
<<<<<<< HEAD
    Sleep  1s
=======
>>>>>>> 5561730a3c981c2ce902535a9250065e2241b3a7
    Verify Login And Signup Link
    Verify Search And Sort  ${KU_W_searchBarForFunds}  ${e_invest_searchBarText}  ${KU_W_invest_searchTextFieldForFunds}  ${KU_W_invest_sort}
    Verify Filter And Clear All
    Verify Element And Text  ${KU_W_invest_fundsScreenTitle}  ${e_invest_giltFund_screenText} 
    Verify Element And Text  ${KU_W_invest_filteredFund}  ${e_invest_giltFund_filteredFundText} 
    Verify Element And Text  ${KU_W_invest_sortYear}  ${e_invest__funds_sortYearText}
    Verify Watchlist Icon  ${KU_W_invest_watchListBtn}
    Wait For Element Visibility  ${KU_W_invest_watchlistHeader}
    # WatchList
    Verify Element And Text  ${KU_W_invest_watchlistHeader}  ${e_invest_watchlistHeader}
    Verify Filter Navigation For Funds
    Go Back
