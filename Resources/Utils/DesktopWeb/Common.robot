** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Library     Collections
Resource    ../../../AppLocators/DesktopWeb/CommonAppLocators.robot
Resource    ../../../AppLocators/DesktopWeb/MenuNavigationLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/InvestLandingPageLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/SaveSmartLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/DigitalGoldLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/GiltFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/EquityIndexLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/ValueFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/ELSSTaxSaverLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/BankPSUBondsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/CryptoLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/FDLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/SectorFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/ELSSTaxSaverLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/USETFLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/UltraShortLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/MutualFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/StocksLocators.robot
Resource    ../../../AppLocators/DesktopWeb/InvestLocators/USStocksLocators.robot
Resource    ../../../AppLocators/DesktopWeb/FooterLocators.robot
Resource    ../../../AppLocators/DesktopWeb/FundHouseLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/LiquidFundsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/ForgotPasswordLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/ESignKYCLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/AmazonSaveShopLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/GoldRushLocators.robot
Resource    ../../../AppLocators/DesktopWeb/UnauthenticatedLinks/DhanterasGoldOfferLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/PostLoginCommonAppLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/HealthInsurancePostLoginLocators/KYCLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/HealthInsurancePostLoginLocators/PlanHealthInsuranceLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/HealthInsurancePostLoginLocators/HealthInsuranceLandingPageLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/CreateAccountForPostLoginLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/DashboardLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/InviteFriendsLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/ReportLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/ManageFolioLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_MFLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_StocksLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_USStocksLocators.robot
Resource    ../../../AppLocators/DesktopWeb/PostLoginFlowsLocators/Portfolio/Portfolio_SaveSmartLocators.robot

*** Keywords ***

Launch URL
    Run keyword If  '${ENV}' == '${e_prod}'  Open Browser  ${URL_prod}  ${BROWSER}  alias=Kuvera
    ...    ELSE IF  '${ENV}' == '${e_stage3}'  Open Browser  ${URL_stage3}  ${BROWSER}  alias=Kuvera
    ...    ELSE IF  '${ENV}' == '${e_stage2}'  Open Browser  ${URL_stage2}  ${BROWSER}  alias=Kuvera
    Log To Console  ${ENV}
    # Maximize Browser Window
    Set Window Size  ${1920}  ${1080}
    Set Selenium Implicit Wait  6s
    Reload Page
    Kuvera Web Close Regulatory Disclosure
    Run Keyword If    '${ENV}' == '${e_prod}'  Close Hello Bar
    ...    ELSE   Log To Console  Staging
    
Welcome Page Should Be Open
    Run Keyword And Continue On Failure  Title Should Be  ${KU_W_title}

Wait For Element Visibility
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=110

Verify Element And Text
    [Arguments]  ${element}  ${text}
    Run Keyword And Continue On Failure  Element Text Should Be  ${element}  ${text}

Verify Page Contains Element
    [Arguments]  ${element}
    Run Keyword And Continue On Failure  Page Should Contain Element  ${element}

Verify Page Contains Image
    [Arguments]  ${image}
    Run Keyword And Continue On Failure  Page Should Contain Image  ${image}

Verify Page Contains Text
    [Arguments]  ${text}
    Run Keyword And Continue On Failure  Page Should Contain  ${text}

Scroll Untill View
    [Arguments]  ${element}
    Scroll Element Into View  ${element}

Verify Page Contains Link
    [Arguments]  ${link}  ${text}
    Run Keyword And Continue On Failure  Page Should Contain Link  ${link}  ${text}

Verify Page Contains Button
    [Arguments]  ${button}
    Run Keyword And Continue On Failure  Page Should Contain Button  ${button}

Verify Disabled Element
    [Arguments]  ${element}
    Run Keyword And Continue On Failure  Element Should Be Disabled  ${element}

Compare Lists
    [Arguments]  ${actualList}   ${expectedList}
    # Get list item from actual list
    FOR  ${actualListItems}  IN  @{actualList}
    ${actualListItem}  Set Variable  ${actualListItems.text}
    END
    # Get list item from expected list
    FOR  ${expectedListItems}  IN  @{expectedList}
    ${expectedListItem}  Set Variable  ${expectedListItems}
    END
    # Compare two list items
    Run Keyword And Continue On Failure  Should Be Equal  ${actualListItem}  ${expectedListItem}

Switch To Window Verify Title And Close
    [Arguments]  ${title}
    Switch Window  locator=NEW
    Sleep  2s
    Run Keyword And Continue On Failure  Title Should Be  ${title}
    Close Window
    Sleep  2s
    Switch Window  browser=Kuvera

Switch To Frame
    [Arguments]  ${element}
    Select Frame  ${element}

Get List Count
    [Arguments]  ${list}
    ${listCount}  Get Length  ${list}
    [Return]  ${listCount}

Kuvera Web Close Regulatory Disclosure 
    Wait Until Element Is Visible  ${KU_W_regulatoryDisclosure}
    Verify Element And Text  ${KU_W_regulatoryDisclosure}  ${e_regulatoryDisclosure}
    Wait For Element Visibility  ${KU_W_close}
    Click Element  ${KU_W_close}

Close Hello Bar
    Sleep  15s
    Wait Until Element Is Visible  ${KU_W_bannerFrame}  timeout=40
    Switch To Frame  ${KU_W_bannerFrame}
    Wait For Element Visibility  ${KU_W_bannerCloseBtn}
    Click Element  ${KU_W_bannerCloseBtn}
    Unselect Frame

Get Json Values
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

Press Enter Key
    [Arguments]  ${element}  
    Press Keys  ${element}  ENTER

Clear Text Field
    [Arguments]  ${field}
    Sleep  500ms
    ${fieldText} =  Get Value  ${field}
    ${fieldTextLen} =  Get Length  ${fieldText}
    Run Keyword If    """${fieldText}""" != ''
    ...     Repeat Keyword  ${fieldTextLen+1}  Press Keys  ${field}  \ue003

Kuvera Web Logo Click
    Wait For Element Visibility  ${KU_W_logo}
    Click Element  ${KU_W_logo}

Verify Google Play & Apple Store Icons
    Scroll Element Into View  ${KU_W_android_image}
    Verify Page Contains Image  ${KU_W_android_image}
    Verify Page Contains Image  ${KU_W_apple_image}

Verify Login And Signup Link
    Wait For Element Visibility  ${KU_W_login}
    Verify Element And Text  ${KU_W_login}  ${e_login}
    Sleep  1s
    Wait For Element Visibility  ${KU_W_signup}
    Verify Element And Text  ${KU_W_signup}  ${e_signup}

Switch To Window
    Switch Window  locator=NEW
    Close Window
    Sleep  5s
    Switch Window  browser=Kuvera
    
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})

Wait Scroll And Click Element
    [Arguments]  ${element}
    Sleep  1s
    Wait For Element Visibility  ${element}
    Scroll Untill View  ${element}
    Click Element  ${element}

Compare Text Values
    [Arguments]  ${actualValue}  ${expectedValue}
    Run Keyword And Continue On Failure  Should Be Equal  ['${actualValue}']  ${expectedValue}

Verify Screen Title
    [Arguments]  ${title}
    Run Keyword And Continue On Failure  Title Should Be  ${title}

Verify Presence Of FAQBOT Icon
    Run Keyword If  '${ENV}' == '${e_prod}'  Verify Page Contains Element  ${KU_W_faqbot_icon}
    ...    ELSE  Log To Console  Staging

Verify Question On FAQBOT Icon
    [Arguments]  ${botButon}  ${question}
    Run Keyword If  '${ENV}' == '${e_prod}'  Open Bot And Validate Question  ${botButon}  ${question}
    ...    ELSE  Log To Console  Staging

Open Bot And Validate Question
    [Arguments]  ${botButon}  ${question}
    Verify Page Contains Element  ${botButon}
    Wait For Element Visibility  ${botButon} 
    Click Element  ${botButon}
    Sleep  2s
    Switch To Frame  ${KU_W_faqbotFrame}
    Wait For Element Visibility  ${KU_W_faqbotQA1}
    Verify Element And Text  ${KU_W_faqbotQA1}  ${question}
    Unselect Frame
    Wait For Element Visibility  ${KU_W_faqbotCloseBanner}
    Click Element  ${KU_W_faqbotCloseBanner}

Scroll And Wait
    [Arguments]  ${element}
    Scroll Untill View  ${element}
    Sleep  1s
    Wait For Element Visibility  ${element}

Replace Characters
    [Arguments]  ${text}  ${char1}  ${char2}
    ${replacedString} =  Replace String  ${text}  ${char1}  ${char2}
    [Return]  ${replacedString}

Click Link And Switch Window
    [Arguments]  ${websiteLink} 
    Click Element  ${websiteLink}
    Switch To Window
    Sleep  2s  

Navigate To Home Page
    Run keyword If  '${ENV}' == '${e_prod}'  Go To  ${URL_prod}
    ...    ELSE IF  '${ENV}' == '${e_stage3}'  Go To  ${URL_stage3}
    Set Window Size  ${1920}  ${1080}
    Reload Page
    Sleep  15s

Logout From App And Navigate To Home Page PostLogin
    Go To  ${URL_stage3}
    Logout From App Post Signup
    Go To  ${URL_stage3}
    Set Window Size  ${1920}  ${1080}
    Reload Page
    Sleep  12s

Generate Random Number
    [Arguments]  ${startingrange}  ${endingrange}
    ${randomNum} =	Evaluate	random.randint(${startingrange}, ${endingrange})
    [Return]   ${randomNum}

Generate Unique Mobile Number
    ${randomMobileNum} =  Generate Random Number  0  99999
    ${result1} =  Convert To Integer  ${randomMobileNum}
    ${result2} =  Convert To Integer  ${e_ca_mobileNum}
    ${actualMobileNumber} =  Evaluate  ${result1}+${result2}
    ${actualMobileNumber1} =  Convert To String  ${actualMobileNumber}
    ${expectedMobileNum} =  Replace Characters  ${actualMobileNumber1}  1  9
    [Return]  ${expectedMobileNum}

Wait And Click 
    [Arguments]  ${element}
    Sleep  1s
    Wait For Element Visibility  ${element}
    Click Element  ${element}

Verify Social Sharing Option 
    [Arguments]  ${fblink}  ${twitterlink}  ${whatsapplink}  ${telegramlink}  ${maillink}
    Wait Scroll And Click Element  ${fblink}
    Switch To Window Verify Title And Close  ${e_HI_facebookTitle}
    Wait Scroll And Click Element  ${twitterlink} 
    Sleep  5s
    Switch To Window Verify Title And Close  ${e_HI_twitterTitle}
    Wait Scroll And Click Element  ${whatsapplink}
    Switch To Window Verify Title And Close  ${e_HI_whatsappTitle} 
    Wait Scroll And Click Element  ${telegramlink}
    Switch To Window Verify Title And Close  ${e_HI_telegramTitle}
    Scroll Page To Location  0   1000
    Wait Scroll And Click Element  ${maillink}
    Sleep  2s
    Wait Scroll And Click Element  ${KU_W_HI_mailLink} 

Logout From App Post Signup
    Sleep  2s
    Wait And Click  ${KU_W_ca_caretDropdown}
    Sleep  2s
    Wait And Click  ${KU_W_ca_logoutBtn}
    Sleep  4s
    Go Back

Login 
    [Arguments]  ${email}  ${pwd}
    Log To Console  Login 
    Wait And Click  ${KU_W_emailTxt}  
    Input Text  ${KU_W_emailTxt}  ${email}
    Wait And Click  ${KU_W_passwordTxt}
    Input Text  ${KU_W_passwordTxt}  ${pwd}
    Wait And Click  ${KU_W_ca_loginBtn}

Verify Registration Page Postlogin 
    [Arguments]  ${KYCMsg}  ${registrationBtn_link}
    Verify Page Contains Element  ${KU_W_postlogin_pageTitle} 
    Verify Element And Text  ${KU_W_postlogin_completeKYCMsg}  ${KYCMsg}
    Verify Page Contains Element  ${registrationBtn_link}

Verify Login And Signup On Prelogin
    ${isLoginButtonVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${KU_W_login}
    IF  ${isLoginButtonVisible}  
        Verify Login And Signup Link
    ELSE  
        Log To Console  Continue
    END

Navigate To PortFolio Tab And Verify Investment Title
    [Arguments]  ${title}  ${titleText}  ${subtitle}  ${subtitleText}
    Wait And Click  ${KU_W_postlogin_portfolioTab}
    Verify Element And Text  ${KU_W_postlogin_portfolio}  ${e_postlogin_portfolioTitle}
    Verify Page Contains Element  ${KU_W_portfolio_startInvesting}
    Scroll Untill View  ${subtitle}
    Verify Element And Text  ${title}  ${titleText}
    Verify Element And Text  ${subtitle}  ${subtitleText}

Verify Explore Or Import Menus Page
    [Arguments]  ${exploreFunds_stocks}  ${funds_stocksSubTitle}  ${importFolioTitle}  ${importFolioDesc}
    Verify Page Contains Element  ${exploreFunds_stocks}
    Verify Page Contains Element  ${funds_stocksSubTitle}
    Verify Page Contains Element  ${importFolioTitle}
    Verify Page Contains Element  ${importFolioDesc}

Verify Navigation To Explore Funds And Import Tab
    [Arguments]  ${exploreFunds_stocks}  ${allFunds_stocksTitle}  ${allFunds_stockText}  ${importMenu}  ${pageTitle}  ${pageText}
    Wait And Click  ${exploreFunds_stocks}
    Wait For Element Visibility  ${allFunds_stocksTitle}
    Verify Element And Text  ${allFunds_stocksTitle}  ${allFunds_stockText}
    Go Back
    Wait And Click  ${importMenu}
    Verify Element And Text  ${pageTitle}  ${pageText}

Verify Update PAN Page
    [Arguments]  ${updatePANTitle}  ${updatePANDesc}  ${PANDescText}  ${PANField}
    Verify Page Contains Element  ${updatePANTitle}
    Verify Element And Text  ${updatePANDesc}  ${PANDescText}
    Verify Page Contains Element  ${PANField}

Enter OTP Postlogin
    Wait For Element Visibility  ${KU_W_ca_OTPField}
    Click Element  ${KU_W_ca_OTPField}
    Input Text  ${KU_W_ca_OTPField}  ${e_ca_OTP}
    Click Element  ${KU_W_ca_submitOTPBtn}
       
Close Web Application
    Close All Browser