*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin About Page
    Log To Console  About
    Navigate To Hamburger Menu  ${KU_A_aboutLink}  ${e_aboutLink}
    # Page Title and Subtitle
    Verify Text On Page  ${e_about_pageTitle}
    Verify Text On Page  ${e_about_pageSubTitle}
    Verify Text On Page  ${e_about_changeTitle}
    Verify Text On Page  ${e_about_tackleHardStuff}
    Verify Text On Page  ${e_about_tackleHardStuffDesc} 
    Verify Text On Page  ${e_about_restEasyTitle} 
    Verify Text On Page  ${e_about_restEasyDesc}
    Swipe By Percent  85  85  20  20  9000
    Verify Text On Page  ${e_about_advisorsTitle}
    # Meet The Team
    Verify Text On Page  ${e_about_meetTheTeamTitle}
    Verify Page Contains Element On Android  ${KU_A_about_img1}
    # Founder Position 
    Verify Text On Page  ${e_about_founder1}
    Verify Text On Page  ${e_about_founder1Position}
    Verify Text On Page  ${e_about_founder1Background}
    Verify Text On Page  ${e_about_founder1Desc}