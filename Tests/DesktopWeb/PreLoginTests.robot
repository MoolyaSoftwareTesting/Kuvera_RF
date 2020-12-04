*** Settings ***
Library     SeleniumLibrary
Resource    ../../Tests/DesktopWeb/ImportPages.robot

Suite Setup  Launch URL 
Suite Teardown  Close All Browsers

#To run all tests: robot --variable URL:https://kuvera.in/ --variable BROWSER:headlesschrome -d Results Tests/DesktopWeb/PreLoginTests.robot
#To run specific test: robot --variable URL:https://kuvera.in/ --variable BROWSER:headlesschrome -d Results  -i TC01 Tests/DesktopWeb/PreLoginTests.robot

*** Test Cases ***
# Langin Page widgets verification
Landing Page Widgets Verification Test 
    [Tags]  TC01
    Verify Widgets

# Header navigation - Insure, Loans, Remit
Header Navigation Test  
    [Tags]  TC02
    Header Navigation

# Features sub headers navigation & goals - questionnaire
Features Header Navigation Test
    [Tags]  TC03
    Feature Sub Header Navigation

# Verify all widgets in Login & Signup Page
Features Header Navigation Test
    [Tags]  TC04
    Verify Login Page Widgets
    Go Back
    Verify Signup Page Widgets