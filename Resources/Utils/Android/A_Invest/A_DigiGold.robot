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
    # Start SIP
    Log To Console  SIP
    Wait And Click Element On Android  ${KU_A_invest_DG_startSIP}
    Verify SIP Gold Details
    # Track
    Log To Console  Track
    Wait And Click Element On Android  ${KU_A_invest_DG_trackIcon}  
    Verify Track Details
    # Buy
    Log To Console  Buy
    Wait And Click Element On Android  ${KU_A_invest_buyIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_buyImg}
    Verify Buy Gold Menu Details
    Verify Login Page And Go Back 
    Wait And Click Element On Android  ${KU_A_invest_DG_refreshIcon}
    # Verify Live Gold Value  ${KU_A_invest_DG_liveGoldBuyVal}
    Verify Gold On Grams
    Verify Login Page And Go Back
    # The Kuvera Advantage
    Verify Kuvera Advantage
    Open Bot And Validate Question On Android  ${KU_A_invest_DG_botQuestion1}

Verify Sell Gold Details
    Wait And Click Element On Android  ${KU_A_invest_DG_sellIcon}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_sellImg} 
    Verify Text On Page  ${e_invest_DG_sellRateLabel}
    Wait And Click Element On Android  ${KU_A_invest_DG_refreshIcon}
    # Verify Live Gold Value  ${KU_A_invest_DG_liveGoldSellVal}
    Verify Text On Page  ${e_gold_partnerLabel}
    Verify Text On Page  ${e_gold_purityLabel}
    Verify Text On Page  ${e_gold_partner}
    Verify Text On Page  ${e_gold_purityValue} 
    Verify Text On Page  ${e_gold_rupeeIcon}
    Verify Text On Page  ${e_gold_unit}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_sell_SIPGoldImg}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_loginToSellGold}
    Verify Login And Signup On Gold

Verify SIP Gold Details
    Verify Page Contains Element On Android  ${KU_A_invest_DG_SIPImg}
    Verify Text On Page  ${e_invest_DG_SIPGold}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_DG_loginToSellGold}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_sell_SIPGoldImg}
    Verify Login And Signup On Gold

Verify Track Details
    Verify Page Contains Element On Android  ${KU_A_invest_DG_trackImg}
    Verify Text On Page  ${e_invest_DG_SIPGold}
    Sleep  1s
    Verify Page Contains Element On Android  ${KU_A_invest_DG_loginToSIPGold}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_sell_SIPGoldImg}
    Verify Login And Signup On Gold

Verify Login And Signup On Gold
    Wait And Click Element On Android  ${KU_A_loginLink}
    Verify Login Page And Go Back 
    Verify Page Contains Element On Android  ${KU_A_invest_DG_noAccountMsg}
    Wait And Click Element On Android  ${KU_A_signupLink}
    Verify Signup Page On Android App
    Go Back

Verify Kuvera Advantage
    Verify Text On Page  ${e_invest_DG_kuveraAdvantage}
    Verify Text On Page  ${e_invest_DG_highestPurity}
    Verify Text On Page  ${e_invest_DG_highestPurityDesc}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_highestPurityImg}
    Verify Text On Page  ${e_invest_DG_secure}
    Verify Text On Page  ${e_invest_DG_secureDesc}
    Swipe By Percent  90  90  50  50  9000
    Verify Page Contains Element On Android  ${KU_A_invest_DG_secureImg}
    Verify Text On Page  ${e_invest_DG_fullyLiquid}
    Verify Text On Page  ${e_invest_DG_fullyLiquidDesc}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_fullyLiquidImg}
    Verify Text On Page  ${e_invest_DG_livePrices}
    Verify Text On Page  ${e_invest_DG_livePricesDesc}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_livePricesImg}
    Swipe By Percent  20  20  10  10  9000
    Verify Text On Page  ${e_invest_DG_augmont}
    Verify Page Contains Element On Android  ${KU_A_invest_DG_augmontImg}
