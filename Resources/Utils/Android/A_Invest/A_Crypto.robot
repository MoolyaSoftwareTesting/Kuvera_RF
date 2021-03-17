*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Crypto Page
    Log To Console  Crypto
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Swipe By Percent  85  85  20  85  15000
    Verify Page Contains Element On Android  ${KU_A_invest_crypto_imgfromExplore}
    Wait And Click Element On Android  ${KU_A_invest_crypto_title}
    Verify Text On Page  ${e_invest_crypto_allCryptoMenu}
    Sleep  1s
    Verify Signup Link And Kuvera Logo
    