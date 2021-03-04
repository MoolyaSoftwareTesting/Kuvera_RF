*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Login Page Widgets
    Log To Console  Login
    Navigate To Hamburger Menu  ${KU_A_loginLink}  ${e_loginLink}
    Verify Text On Page  ${e_loginTitle}
    Verify Text On Page  ${e_noAccountYet} 
    Verify Page Contains Element On Android  ${KU_A_signupLink}
    Wait And Click Element On Android  ${KU_A_signupLink}
    Verify Signup Page On Android App
    Go Back
    Verify Text On Page  ${e_emailAddressLabel} 
    Verify Page Contains Element On Android  ${KU_A_emailField}
    Verify Text On Page  ${e_passwordLabel}
    Verify Page Contains Element On Android  ${KU_A_passwordField} 
    Verify Page Contains Element On Android  ${KU_A_forgotPasswordLink}
    Wait And Click Element On Android  ${KU_A_forgotPasswordLink}
    Verify Text On Page  ${e_forgotPasswordTitle}
    Go Back
    Verify Text On Page  ${e_ORLabel}
    Verify Page Contains Element On Android  ${KU_A_loginBtn}
    Verify Page Contains Element On Android  ${KU_A_loginFBBtn}
    Verify Page Contains Element On Android  ${KU_A_loginGoogleBtn} 
    Wait And Click Element On Android  ${KU_A_logo}


    