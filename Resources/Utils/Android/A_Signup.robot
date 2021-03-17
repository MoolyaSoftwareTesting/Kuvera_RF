*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Signup Page Widgets
    Log To Console  Signup
    Navigate To Hamburger Menu  ${KU_A_hamburger_signupLink}  ${e_signupLink}
    Verify Text On Page  ${e_signupTitle}
    Verify Text On Page  ${e_signupSubTitle}
    Verify Text On Page  ${e_alreadyHaveAcc}
    Verify Page Contains Element On Android  ${KU_A_loginLink} 
    Wait And Click Element On Android  ${KU_A_loginLink} 
    Verify Login Page And Go Back 
    Verify Text On Page  ${e_emailAddressLabel} 
    Verify Page Contains Element On Android  ${KU_A_emailField}
    Verify Text On Page  ${e_mobileLabel}
    Verify Page Contains Element On Android  ${KU_A_mobileNumField}
    Verify Text On Page  ${e_setPasswordLabel}
    Verify Page Contains Element On Android  ${KU_A_passwordField}
    Verify Text On Page  ${e_inviteCodeLabel}
    Verify Page Contains Element On Android  ${KU_A_inviteCodeField}
    Verify Page Contains Element On Android  ${KU_A_signupBlueBtn}
    Verify Text On Page  ${e_inviteMsg}
    Verify Text On Page  ${e_ORLabel}
    Verify Page Contains Element On Android  ${KU_A_signupGoogleBtn}
    Verify Page Contains Element On Android  ${KU_A_signupFBBtn}
    Wait And Click Element On Android  ${KU_A_logo}





    