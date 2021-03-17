*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Verify Question Title
    [Arguments]  ${element}  ${text}
    Wait For Element Visibility  ${element}
    ${actualTitle} =  Get Text  ${element}
    ${expectedTitle} =  Convert To String    ${text}
    ${actualTitle1} =  Replace String  ${actualTitle}  ’  '
    ${expectedTitle1} =  Replace String  ${expectedTitle}  ’  '
    ${expectedTitle2} =  Replace String  ${expectedTitle1}  â€™  '
    Should be equal  ['${actualTitle1}']  ${expectedTitle2}

Verify PreLogin Set A Goal Page
    ${goal1}  Get Json Values  $.Goals.g1  Resources/TestData/Goals.json
    ${goal2}  Get Json Values  $.Goals.g2  Resources/TestData/Goals.json
    ${goal3}  Get Json Values  $.Goals.g3  Resources/TestData/Goals.json
    ${goal4}  Get Json Values  $.Goals.g4  Resources/TestData/Goals.json
    ${goal5}  Get Json Values  $.Goals.g5  Resources/TestData/Goals.json
    ${goal6}  Get Json Values  $.Goals.g6  Resources/TestData/Goals.json
    ${goal7}  Get Json Values  $.Goals.g7  Resources/TestData/Goals.json
    ${goal8}  Get Json Values  $.Goals.g8  Resources/TestData/Goals.json

    Click Element  ${KU_W_featureLink}
    Wait For Element Visibility  ${KU_W_feature_setAGoalLink}
    Click Element  ${KU_W_feature_setAGoalLink}

    Wait For Element Visibility  ${KU_W_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenTitle}  ${e_feature_sg_screenTitle}
    Verify Element And Text  ${KU_W_feature_sg_screenSubTitle}  ${e_feature_sg_screenSubTitle}
    Verify Element And Text  ${KU_W_feature_sg_content}  ${e_feature_sg_content}

    ${listCount} =  Get Element Count  ${KU_W_feature_goalsList}
    FOR  ${j}  IN RANGE  1   ${listCount}+1
        Sleep  3s
        ${goalName} =  Get Text  xpath=(//div[@class='b-flat-card b-more-goals-options__goal']//div[2])[${j}]
        Log To Console  ${goalName}
        Run keyword If  ['${goalName}'] == ${goal1}  Verify Own A Home Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal2}  Verify Buy A Car Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal3}  Verify Save Tax Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal4}  Verify Retire Easy Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal5}  Verify 25 Anniversary Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal6}  Verify Foreign Vacation Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal7}  Verify Educate My Child Questionnaire
        ...    ELSE IF  ['${goalName}'] == ${goal8}  Verify Create My Goal Questionnaire
        ...    ELSE   Go Back
    END

Verify Question And Enter Input
    [Arguments]  ${actualQTitle}  ${expectedQTitle}  ${inputTxtField}  ${inputValue}
    Verify Question Title  ${actualQTitle}  ${expectedQTitle}
    Clear Text Field  ${inputTxtField}
    Input Text  ${inputTxtField}  ${inputValue}  clear=True
    Press Enter Key  ${inputTxtField}

Navigate To Features Goals
    Wait For Element Visibility  ${KU_W_logo_signup}
    Click Element  ${KU_W_logo_signup}
    Sleep  3s
    Wait For Element Visibility  ${KU_W_featureLink}
    Click Element  ${KU_W_featureLink}
    Wait For Element Visibility  ${KU_W_feature_setAGoalLink}
    Click Element  ${KU_W_feature_setAGoalLink}

Verify Recommendation And Navigation
    [Arguments]  ${userFinancialProfile1}
    # Select the user current financial profiles
    Wait For Element Visibility  ${KU_W_feature_sg_almostDone}
    Verify Element And Text  ${KU_W_feature_sg_almostDone}  ${e_feature_sg_almostDone}
    #Scroll Untill View  ${KU_W_feature_sg_continue}
    Wait Scroll And Click Element  ${userFinancialProfile1}
    Sleep  1s
    Wait Scroll And Click Element  ${KU_W_feature_sg_continue}
    Wait For Element Visibility  ${KU_W_feature_sg_investmentSummary}
    Verify Page Contains Element  ${KU_W_feature_sg_investmentSummary}

    # View the suggested plan details 
    Wait For Element Visibility  ${KU_W_feature_sg_seeYourPlan}
    Verify Element And Text  ${KU_W_feature_sg_seeYourPlan}  ${e_feature_sg_seeYourPlan}
    Click Button  ${KU_W_feature_sg_seeYourPlan}

    # Choose to get the plan and verify sign up option is shown
    Wait For Element Visibility  ${KU_W_feature_sg_getThisPlan}
    Scroll Untill View  ${KU_W_feature_sg_getThisPlan}
    Verify Element And Text  ${KU_W_feature_sg_getThisPlan}  ${e_feature_sg_getThisPlan}
    Click Button  ${KU_W_feature_sg_getThisPlan}
    Sleep  2s
    ${isElementVisible} =  Run Keyword And Return Status  Visibility Of Signup Page
    Run Keyword If   ${isElementVisible}  Log To Console  Continue
    ...    ELSE  Click Button  ${KU_W_feature_sg_getThisPlan}
    Verify Signup Page
    Navigate To Features Goals  

Visibility Of Signup Page
    Wait For Element Visibility  ${KU_W_signupPageTitle}
    Element Should Be Visible  ${KU_W_signupPageTitle}