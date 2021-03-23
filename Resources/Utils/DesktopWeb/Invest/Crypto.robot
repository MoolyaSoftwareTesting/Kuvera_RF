*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify PreLogin Crypto Landing Page
    Log To Console  Crypto - Explore More
    Wait And Click  ${KU_W_investLink}
    Sleep  1s
    Wait And Click  ${KU_W_crypto_titlefromExplore}
    Sleep  2s
    Verify Page Contains Element  ${KU_W_crypto_tabName}
    Verify Login And Signup Link
    Verify Page Contains Element  ${KU_W_crypto_coinName}
    Verify Page Contains Element  ${KU_W_crypto_offerPrice}
    Verify Page Contains Image  ${KU_W_crypto_imgIcon}
    Verify Page Contains Element  ${KU_W_crypto_priceLabel}
    Verify Page Contains Element  ${KU_W_crypto_priceVal} 
    Verify Element And Text  ${KU_W_crypto_yearLabel}  ${e_crypto_year}
    Verify Element And Text  ${KU_W_crypto_VolumeLabel}  ${e_crypto_volume} 
    ${1YVal} =  Get Text  ${KU_W_crypto_yearVal}
    ${contains%} =  Run Keyword And Return Status  Should Contain  ${1YVal}  ${e_crypto_perInYearVal}
    IF  ${contains%}
        Verify Page Contains Element  ${KU_W_crypto_perInYearVal} 
    ELSE
        Verify Page Contains Element  ${KU_W_crypto_NAInYearVal}
    END
    # Iterate the Crypto detail screen
    FOR  ${i}  IN RANGE  1  4
        @{cryptoNameFromJson} =  Get Json Values  $.Crypto.c${i}  Resources/TestData/Crypto.json 
        Log To Console  ${cryptoNameFromJson}
        Verify Crypto Details Page  ${cryptoNameFromJson}
    END
    

Verify Crypto Details Page
    [Arguments]  ${cName}
    ${cryptoString} =  Convert To String  ${cName}
    ${crypto_str1} =  Replace String  ${cryptoString}  ['  ${EMPTY}
    ${crypto_str2} =  Replace String  ${crypto_str1}  ']  ${EMPTY}
    ${text} =  Set Variable  xpath=//*[text()=
    ${cryptoName} =  Set Variable  '${crypto_str2}']
    ${crypName} =  Set Variable  ${text}${cryptoName}
    Scroll Untill View  ${crypName}
    Wait And Click  ${crypName}
    Verify Page Contains Element  ${KU_W_crypto_coinNameOnDetails}
    Verify Page Contains Element  ${KU_W_crypto_navVal} 
    Verify Page Contains Element  ${KU_W_crypto_navRate}
    Verify Page Contains Element  ${KU_W_crypto_date_time}
    # Live Market Hour is pending
    # Graph Section
    Verify Performance Chart For Stocks And Crypto  ${KU_W_invest_stocks_crypto_performanceChart}
    Verify Coin Widget Section
    Verify Element And Text  ${KU_W_crypto_helpIcon}  ${e_crypto_help}
    Verify Sharing Options On Crypto
    Go Back  

Verify Coin Widget Section
    Verify Page Contains Element  ${KU_W_crypto_boxIcon}
    Verify Element And Text  ${KU_W_crypto_subText}  ${e_crypto_subText}
    Verify Page Contains Element  ${KU_W_crypto_keepMePostedBtn}
    Wait And Click  ${KU_W_crypto_keepMePostedBtn}
    Verify Login Page
    Scroll Untill View  ${KU_W_crypto_priceLabel}
    Verify Page Contains Element  ${KU_W_crypto_priceLabel}
    Verify Element And Text  ${KU_W_crypto_todaysHighLabel}  ${e_crypto_todaysHighLabel}
    Verify Element And Text  ${KU_W_crypto_todaysLowLabel}  ${e_crypto_todaysLowLabel}
    Verify Element And Text  ${KU_W_crypto_volLabel}  ${e_crypto_volume}

Verify Sharing Options On Crypto
    FOR  ${i}  IN RANGE  1  5
        Wait And Click  ${KU_W_crypto_sharingIcon}
        Wait And Click  xpath=//div[@class='full-height']//a[${i}]//img[1]
        Switch To Window 
    END
    Wait And Click  ${KU_W_crypto_sharingIcon}
    Wait And Click  ${KU_W_crypto_copyIcon}
    # Toast message could not be validated using text and mail icon popup is not closing on automation
    # Wait And Click  ${KU_W_crypto_sharingIcon}
    # Wait And Click  ${KU_W_crypto_mailIcon}
    # Wait And Click  ${KU_W_crypto_coinNameOnDetails}