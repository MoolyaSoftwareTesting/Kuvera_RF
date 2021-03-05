*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Digi Gold Page
    Log To Console  Digi Gold
    Navigate To Hamburger Menu  ${KU_A_invest_link}  ${e_invest_link}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_imgfromExplore} 
    Verify Page Contains Element On Android  ${KU_A_invest_DG_title}
    Wait And Click Element On Android  ${KU_A_invest_DG_title}
    Verify Text On Page  ${e_gold_screenTitle}
    Verify Signup Link And Kuvera Logo
    # Sell
    Log To Console  Sell
    Verify Sell Gold Details
    Log Source  loglevel=INFO  
    # Start SIP
    Log To Console  SIP
    Wait And Click Element On Android  ${KU_A_invest_DG_startSIP}
    Log Source  loglevel=INFO 
    Verify SIP Gold Details
    # Track
    Log To Console  Track
    Wait And Click Element On Android  ${KU_A_invest_DG_trackIcon}
    Log Source  loglevel=INFO  
    Verify Track Details
    # Buy
    Log To Console  Buy
    Wait And Click Element On Android  ${KU_A_invest_DG_buyIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_buyImg}
    Verify Buy Gold Menu Details
    Verify Login Page And Go Back 
    Wait And Click Element On Android  ${KU_A_invest_DG_refreshIcon}
    Verify Gold On Grams
    Verify Login Page And Go Back

Verify Sell Gold Details
    Wait And Click Element On Android  ${KU_A_invest_DG_sellIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_sellImg} 
    Verify Text On Page  ${e_invest_DG_sellRateLabel}
    Wait And Click Element On Android  ${KU_A_invest_DG_refreshIcon}
    Verify Text On Page  ${e_gold_partnerLabel}
    Verify Text On Page  ${e_gold_purityLabel}
    Verify Text On Page  ${e_gold_partner}
    Verify Text On Page  ${e_gold_purityValue} 
    Verify Text On Page  ${e_gold_rupeeIcon}
    Verify Text On Page  ${e_gold_unit}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_sell_SIPGoldImg}
    Verify Text On Page  ${e_invest_DG_loginToSellGold}
    Verify Login And Signup On Gold

Verify SIP Gold Details
    Verify Page Contains Element On Android  ${KU_A_invest_DG_SIPImg}
    Verify Text On Page  ${e_invest_DG_SIPGold}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_DG_loginToSIPGold}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_sell_SIPGoldImg}
    Verify Login And Signup On Gold

Verify Track Details
    Verify Page Contains Element On Android  ${KU_A_invest_DG_trackImg}
    Verify Text On Page  ${e_invest_DG_addGoldPurchased}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_DG_loginToAddGold}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_sell_SIPGoldImg}
    Verify Login And Signup On Gold

Verify Login And Signup On Gold
    Wait And Click Element On Android  ${KU_A_loginLink}
    Verify Login Page And Go Back 
    Verify Page Contains Element On Android  ${KU_A_invest_DG_noAccountMsg}
    Wait And Click Element On Android  ${KU_A_signupLink}
    Verify Signup Page On Android App
    Go Back