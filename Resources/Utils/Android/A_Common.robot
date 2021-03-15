*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     AppiumLibrary
Library     String
Resource   ../../../AppLocators/Android/A_CommonAppLocators.robot
Resource   ../../../AppLocators/Android/A_MenuNavigationLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_InvestLandingPageLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_SaveSmartLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_GiltFundsLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_UltraShortLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_USETFLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_EquityIndexLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_SectorFundsLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_ValueFundsLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_52WkHighIndiaLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_FDLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_CryptoLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_DigiGoldLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_BankPSUBondsLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_MFLocators.robot
Resource   ../../../AppLocators/Android/A_InvestLocators/A_StocksLocators.robot

*** Keywords ***

Launch Kuvera Android App
    Run Keyword If    '${environmentToRunTest}'=='${e_realDevice}'  Open Kuvera App On Real Device
    ...     ELSE IF   '${environmentToRunTest}'=='${e_browserstackDevice}'  Open Kuvera App On Browserstack
    Wait For Element Visibility On Android  ${KU_A_slider1}
    Navigate to Landing Page

Open Kuvera App On Browserstack
    Open Application  ${remote_URL}  app=${appURL}  name=PreloginTests   build=RobotFramework    platformName=Android    os_version=9.0    device=Google Pixel 3  

Open Kuvera App On Real Device
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform_version}  deviceName=${device}  automationName=${appium}  appActivity=${app_activity}  appPackage=${app_package}

Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Run Keyword And Continue On Failure  Element Should Contain Text  ${element}  ${text}

Wait For Element Visibility On Android
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=30

Wait And Click Element On Android
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Click Element  ${element}

Wait And Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Wait For Element Visibility On Android  ${element}
    Verify Element And Text On Android  ${element}  ${text}    

Verify Page Contains Element On Android
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Run Keyword And Continue On Failure  Page Should Contain Element  ${element}

Scroll Down On Android
    [Arguments]  ${element}
    Scroll Down  ${element}

Verify Presence Of Bot Button
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Verify Page Contains Element On Android  ${element}

Get Json Values On Android
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

Skip Sliders
    Wait And Click Element On Android  ${KU_A_slider5}
    Sleep  1s
    Wait And Click Element On Android  ${KU_A_slider1}
    Wait And Click Element On Android  ${KU_A_skip}

Kuvera Logo Click
    Wait And Click Element On Android  ${KU_A_logo}
    Sleep  2s
    Wait And Click Element On Android  ${KU_A_close}

Verify Navigation to SaveSmart Page
    Click Element  ${KU_A_hamburgerMenu}
    Wait Until Page Contains Element  ${KU_A_investMenu}  timeout=60s
    Click Element  ${KU_A_investMenu}
    Wait Until Page Contains Element  ${KU_A_savesmartTiles}  timeout=60s
    Click Element  ${KU_A_savesmartTiles}
    Wait Until Page Contains Element  ${KU_A_savesmartHeader}  timeout=60s
    Element Should Contain Text  ${KU_A_savesmartHeader}  ${e_A_savesmartHeader}
    Click Element  ${KU_A_logo}

Navigate to Landing Page 
    Skip Sliders
    Kuvera Logo Click

Click On Kuvera Logo
    Wait And Click Element On Android  ${KU_A_logo}

Navigate To Hamburger Menu
    [Arguments]  ${links}  ${linkText}
    Wait And Click Element On Android  ${KU_A_hamburgerMenu}
    Wait And Verify Element And Text On Android  ${links}  ${linkText}
    Wait And Click Element On Android  ${links}

Click On Links
    Wait And Verify Element And Text On Android  ${links}  ${linkText}
    Wait And Click Element On Android  ${links}

Verify Signup Link And Kuvera Logo
    Wait And Verify Element And Text On Android  ${KU_A_signupLink}  ${e_signupLink}
    Wait For Element Visibility On Android  ${KU_A_logo}
    Verify Page Contains Element On Android  ${KU_A_logo}

Verify Login And Signup Button
    Wait And Verify Element And Text On Android  ${KU_A_loginLink}   ${e_loginLink}
    Wait And Click Element On Android  ${KU_A_loginLink}
    Wait And Verify Element And Text On Android  ${KU_A_loginTitle}  ${e_loginTitle}
    Wait And Click Element On Android  ${KU_A_logo}
    Sleep  2s
    Wait And Verify Element And Text On Android  ${KU_A_signupBtn}  ${e_signupLink}
    Wait And Click Element On Android  ${KU_A_signupBtn}
    Wait And Verify Element And Text On Android  ${KU_A_signupTitle}  ${e_signupTitle}
    Wait And Click Element On Android  ${KU_A_logo}

Verify Signup Page On Android App
    Wait And Verify Element And Text On Android  ${KU_A_signupTitle}  ${e_signupTitle}
    Sleep  2s

Verify Login Page On Android App
    Wait And Verify Element And Text On Android  ${KU_A_loginTitle}  ${e_loginTitle}
    Wait And Click Element On Android  ${KU_A_logo}

Verify Login Page And Go Back 
    Wait And Verify Element And Text On Android  ${KU_A_loginTitle}  ${e_loginTitle}
    Go Back

Verify Widgets And Title
    [Arguments]  ${label}  ${labelText}  ${title}  ${titleText}
    Wait And Verify Element And Text On Android  ${label}  ${labelText}
    Wait And Click Element On Android  ${label}
    Wait And Verify Element And Text On Android  ${title}  ${titleText}

Wait Until Page Contains Text
    [Arguments]  ${text}
    Run Keyword And Continue On Failure  Page Should Contain Text  ${text}

Verify Text On Page
    [Arguments]  ${text}
    Wait Until Page Contains  ${text}  timeout=30
    Run Keyword And Continue On Failure  Page Should Contain Text  ${text}

Verify Live Gold Value
    [Arguments]  ${liveGoldVal}
    Wait And Click Element On Android  ${KU_A_invest_DG_refreshIcon}
    Run Keyword And Continue On Failure  Page Should Contain Element  ${liveGoldVal}

Open Bot And Validate Question On Android
    [Arguments]  ${question}
    Verify Page Contains Element On Android  ${KU_A_faqBotBtn}
    Wait And Click Element On Android  ${KU_A_faqBotBtn}
    Verify Page Contains Element On Android  ${question}
    Wait And Click Element On Android  ${KU_A_botCloseBtn} 

Press Enter Key On Android
    [Arguments]  ${element}  
    Press Keys  ${element}  ENTER

Replace Characters On Android
    [Arguments]  ${text}  ${char1}  ${char2}
    ${replacedString} =  Replace String  ${text}  ${char1}  ${char2}
    [Return]  ${replacedString}

Get Fund Or Stock Name
    [Arguments]  ${mf_stockName}
    ${mf_stock1} =  Replace String  ${mf_stockName}  ['  ${EMPTY}
    ${mf_stockN} =  Replace String  ${mf_stock1}  ']  ${EMPTY}
    [Return]  ${mf_stockN}  
  
Quit Kuvera Application
    Quit Application
