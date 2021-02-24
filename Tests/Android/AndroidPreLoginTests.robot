*** Settings ***
Library     OperatingSystem
Library     JSONLibrary
Library     JsonValidator

Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Launch Kuvera Android App
# Test Teardown  Click On Kuvera Logo
Suite Teardown  Quit Kuvera Application

# To run all tests on real device  : robot --variable environmentToRunTest:Local --variable platform:Android --variable platform_version:${OSversion} --variable device:${deviceName} -d Results  Tests/Android/AndroidPreLoginTests.robot
# To run specific test on real device :  robot --variable environmentToRunTest:Local --variable platform:Android --variable platform_version:${OSversion} --variable device:${deviceName} -d Results -i TC01 Tests/Android/AndroidPreLoginTests.robot

# To run all test on browserstack : robot --variable environmentToRunTest:Browerstack -d Results  Tests/Android/AndroidPreLoginTests.robot
# To run specific test on browserstack : robot --variable environmentToRunTest:Browerstack -d Results -i TC01 Tests/Android/AndroidPreLoginTests.robot

*** Test Cases ***

# Landing Page widgets verfication on Android
Landing Page Widgets Verification on Android
    [Tags]  TC01 
    Verify PreLogin Landing Page Widgets
    
# Header Navigation on Android - Insure , Loans, Remit
Header Navigation Verification on Android
    [Tags]  TC02
    PreLogin Header Navigation On Android
    
# All Menu Navigation under Features
Features Header Navigation Verification on Android
    [Tags]  TC03
    PreLogin Feature Sub Header Navigation On Android
    
# Invest Menu Navigation
Invest Navigation Verification on Android
    [Tags]  TC04
    Verify Android PreLogin Invest Tiles

# SaveSmart Menu Navigation Under Invest
SaveSmart Navigation Verification on Android
    [Tags]  TC05
    Verify Android PreLogin SaveSmart Page

# All Menu Navigation under Features
Features Header Navigation Verification on Android
    [Tags]  TC06
    Verify Android PreLogin Tax Harvesting Page

# All Menu Navigation under Features
Features Header Navigation Verification on Android
    [Tags]  TC07
    Verify Android PreLogin Save Taxes Page

# All Menu Navigation under Features
Features Header Navigation Verification on Android
    [Tags]  TC08
    Verify Android PreLogin Consolidate Page