*** Settings ***

Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/Import.robot

Suite Setup  Launch URL
Suite Teardown  Close All Browsers

#To run tests on Prod : robot --variable BROWSER:headlesschrome --variable ENV:prod -d Results -i Prod Tests/DesktopWeb/Tests.robot
#To run tests on Stage 2 : robot --variable BROWSER:headlesschrome --variable ENV:stage2 -d Results -i Stage2 Tests/DesktopWeb/Tests.robot
#To run tests on Stage 3 :robot --variable BROWSER:headlesschrome --variable ENV:stage3 -d Results -i Stage3 Tests/DesktopWeb/Tests.robot
# To run specific test on Prod : robot --variable BROWSER:headlesschrome --variable ENV:prod -d Results -i TC01 Tests/DesktopWeb/Tests.robot
# To run specific test on Stage2 : robot --variable BROWSER:headlesschrome --variable ENV:stage2 -d Results -i TC13 Tests/DesktopWeb/Tests.robot
# To run specific test on Stage3 : robot --variable BROWSER:headlesschrome --variable ENV:stage3 -d Results -i TC20 Tests/DesktopWeb/Tests.robot

*** Test Cases ***

# Landing Page widgets verfication
Landing Page Widgets Verification
    [Tags]  TC01  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin Widgets

# Header navigation - Insure, Loans, Remit
Header Navigation
    [Tags]  TC02  Prod  Stage3
    [Teardown]  Navigate To Home Page
    PreLogin Header Navigation

# Features sub headers navigation & goals - questionnaire
Features Header Navigation
    [Tags]  TC03  Prod  Stage3
    [Teardown]  Navigate To Home Page
    PreLogin Feature Sub Header Navigation

# Verify all widgets in Login & Signup Page
Login and Signup Page Navigation Test
    [Tags]  TC04  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin Login Page Widgets
    Go Back
    Verify PreLogin Signup Page Widgets
    Go Back

# Invest Landing Page Navigation
Invest Tiles And Widgets Navigation
    [Tags]  TC05  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin Invest Tiles

# Invest Mutual Fund
Invest Mutual Fund Navigation
    [Tags]  TC06  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin Mutual Fund Landing Page

# Invest Digital Gold
Invest Digital Gold Navigation
    [Tags]  TC07  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin Digital Gold Landing Page

# Invest Stocks
Invest Stocks Navigation
    [Tags]  TC08  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin Stocks Landing Page

# Invest US Stocks
Invest US Stocks Navigation
    [Tags]  TC09  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin US Stocks Landing Page

# Invest Save Smart
Invest Save Smart Navigation
    [Tags]  TC10  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin Save Smart Landing Page

# Invest Crypto
Invest Crypto Navigation
    [Tags]  TC11  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin Crypto Landing Page

# Footer Section
Verify Footer Section
    [Tags]  TC12  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin Footer

# Fund House Details
All Fund House Details Navigation
    [Tags]  TC13  Prod  Stage3
    [Teardown]  Navigate To Home Page
    Verify PreLogin All Fund House Details

# ----------------- Unauthenticated Links -----------------
# Unauthenticated Links - Liquid Fund
Liquid Fund Page Navigation
    [Tags]  TC14  Stage2
    Verify PreLogin Liquid Fund Page

# Unauthenticated Links - Forgot Password
Forgot Password Page Navigation
    [Tags]  TC15  Stage2
     Verify PreLogin Forgot Password Page

# Unauthenticated Links - E Sign KYC- Failed
E Sign KYC - Failed Navigation
    [Tags]  TC16  Stage2
    Verify PostLogin E Sign KYC Failed Page

# Unauthenticated Links - E Sign KYC- Completed
E Sign KYC - Completed Navigation
    [Tags]  TC17  Stage2
    Verify PostLogin E Sign KYC Completed Page

# Unauthenticated Links - Amazon Save Shop
Amazon Save Shop Navigation
    [Tags]  TC18  Stage2
    Verify PreLogin Amazon Save Shop Page

# Unauthenticated Links - Gold Rush
Gold Rush Navigation
    [Tags]  TC19  Stage2
    Verify PreLogin Gold Rush Page

# Unauthenticated Links - Dhanteras Gold Offer
Dhanteras Gold Offer Navigation
    [Tags]  TC20  Stage2
    Verify PreLogin Dhanteras Gold Offer Page

# ----------------- Post Login -----------------
# Account Creation and Fill In KYC From Dashboard
Create Account And Fill In KYC
    [Tags]  TC21  Stage3
    [Teardown]  Logout From App And Navigate To Home Page PostLogin
    Verify PostLogin Account Creation
    Verify Fill In Of KYC Form Details

# Create Account And Health Insurance End To End Flow
Health Insurance Navigation
    [Tags]  TC22  Stage3
    [Teardown]  Logout From App And Navigate To Home Page PostLogin
    Verify PostLogin Account Creation
    Verify PostLogin Insure Landing Page
    Verify PostLogin Add Family Details
    Login And Verify Policy Details