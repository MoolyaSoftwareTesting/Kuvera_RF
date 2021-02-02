*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify PreLogin Landing Page Widgets
    Verify Signup Link And Kuvera Logo
    Swipe  300  300  100  100  900
    Verify Widgets And Title  ${KU_A_stocksLabel}  ${e_stocksLabel}  ${KU_A_stocksSubTitle}  ${e_stocksSubTitle}
    Verify Widgets And Title  ${KU_A_USStocksLabel}  ${e_USStocksLabel}  ${KU_A_USStocksTitle}  ${e_USStocksTitle} 
    Verify Widgets And Title  ${KU_A_savesmartLabel}  ${e_savesmartLabel}  ${KU_A_savesmartTitle}  ${e_savesmartTitle}
    Swipe  617  942  673  976  1000
    Verify Widgets And Title  ${KU_A_goldLabel}  ${e_goldLabel}  ${KU_A_goldTitle}  ${e_goldTitle}
    Verify Mutual Fund Widgets

Verify Mutual Fund Widgets
    Wait And Verify Element And Text On Android  ${KU_A_MFLabel}  ${e_MFLabel}
    Wait And Click Element On Android  ${KU_A_MFLabel}
    Wait And Verify Element And Text On Android  ${KU_A_MFTitle}  ${e_MFTitle}
    Wait And Verify Element And Text On Android  ${KU_A_MFSubTitle}  ${e_MFSubTitle} 
    Verify Login And Signup Button
    Wait And Verify Element And Text On Android  ${KU_A_croreAUALabel}  ${e_croreAUALabel}
    Wait And Verify Element And Text On Android  ${KU_A_croreAUAVal}  ${e_croreAUAVal}
    Wait And Verify Element And Text On Android  ${KU_A_goalsLabel}  ${e_goalsLabel}
    Wait And Verify Element And Text On Android  ${KU_A_goalsVal}  ${e_goalsVal} 
    Wait And Verify Element And Text On Android  ${KU_A_transactionsLabel}  ${e_transactionsLabel}
    Wait And Verify Element And Text On Android  ${KU_A_transactionsVal}  ${e_transactionsVal}
    Wait And Verify Element And Text On Android  ${KU_A_MF_categoryLabel}  ${e_MF_categoryLabel}
    Swipe  550  550  150  150  2000
    Wait And Verify Element And Text On Android  ${KU_A_MF_categoryVal}  ${e_MF_categoryVal}
    Wait And Verify Element And Text On Android  ${KU_A_MF_subcategoryLabel}  ${e_MF_subcategoryLabel}
    Swipe  550  550  150  150  2000
    Wait And Verify Element And Text On Android  ${KU_A_MF_subcategoryVal}  ${e_MF_subcategoryVal}
    Swipe  550  550  150  150  2000
    Verify Page Contains Element On Android  ${KU_A_MF_fundName}
    Swipe  550  550  150  150  2000
    Verify Page Contains Element On Android  ${KU_A_MF_watchListBtn}
    Swipe  550  550  150  150  2000
    Verify Page Contains Element On Android  ${KU_A_MF_exploreMFLink}
    Verify Presence Of Bot Button  ${KU_A_MF_faqBotBtn}    