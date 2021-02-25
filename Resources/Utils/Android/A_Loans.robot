*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Loans Page
    Log To Console  Loans
    Log To Console  Title Validation
    Navigate To Hamburger Menu  ${KU_A_loansLink}  ${e_loansLink}
    Wait And Verify Element And Text On Android  ${KU_A_loansTitle}  ${e_loansTitle}
    Wait And Verify Element And Text On Android  ${KU_A_loansSubTitle}  ${e_loansSubTitle}
    Verify Signup Link And Kuvera Logo
    Log To Console  Image Validation
    Wait For Element Visibility On Android  ${KU_A_loans_imgIcon}
    Verify Page Contains Element On Android  ${KU_A_loans_imgIcon}
    Wait And Verify Element And Text On Android  ${KU_A_loans_eligibilityBtn}   ${e_loans_eligibilityBtn}
    Wait And Click Element On Android  ${KU_A_loans_eligibilityBtn}
    Verify Login Page On Android App
    Sleep  3s
    Navigate To Hamburger Menu  ${KU_A_loansLink}  ${e_loansLink}
    Sleep  1s
    Swipe By Percent  70  70  30  30  900
    Verify Affordable Loan Section
    Verify Loan Calculator
    Verify Presence Of Bot Button  ${KU_A_faqBotBtn}
    Swipe By Percent  30  30  85  85  5000
    Swipe By Percent  30  30  85  85  5000

Verify Affordable Loan Section
    Log To Console  Title And Text Validation
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanTitle}  ${e_loans_affordableLoanTitle}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanSubTitle}  ${e_loans_affordableLoanSubTitle}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanPoint1}  ${e_loans_affordableLoanPoint1}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanPoint2}  ${e_loans_affordableLoanPoint2}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanPoint3}  ${e_loans_affordableLoanPoint3}
    Wait And Verify Element And Text On Android  ${KU_A_loans_affordableLoanPoint4}  ${e_loans_affordableLoanPoint4}

Verify Loan Calculator
    Wait And Verify Element And Text On Android  ${KU_A_loans_checkSavings}  ${e_loans_checkSavings}
    Wait And Verify Element And Text On Android  ${KU_A_inputField}  ${e_loans_savingAmt}
    # Loan Against Portfolio
    Log To Console  Title And Text Validation
    Sleep  1s
    Swipe By Percent  70  70  40  40  1000
    Wait And Verify Element And Text On Android  ${KU_A_loans_portfolioTitle}  ${e_loans_portfolioTitle}
    Wait And Verify Element And Text On Android  ${KU_A_loans_monthlyEMI}  ${e_loans_monthlyEMI} 
    Wait And Verify Element And Text On Android  ${KU_A_loans_interest}  ${e_loans_interest} 
    Wait And Verify Element And Text On Android  ${KU_A_loans_charges}  ${e_loans_charges}
    Verify Page Contains Element On Android  ${KU_A_loans_portfolioChargesVal}
    Verify Page Contains Element On Android  ${KU_A_loans_portfolioIntVal}
    Verify Page Contains Element On Android  ${KU_A_loans_portfolioEMIVal}
    # Personal Loan
    Log To Console  Title And Text Validation
    Wait And Verify Element And Text On Android  ${KU_A_loans_personalLoanTitle}  ${e_loans_personalLoanTitle}
    Verify Page Contains Element On Android  ${KU_A_loans_personalChargesVal}
    Verify Page Contains Element On Android  ${KU_A_loans_personalIntVal}
    Verify Page Contains Element On Android  ${KU_A_loans_personalEMIVal}