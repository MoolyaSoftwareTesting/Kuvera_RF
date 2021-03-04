*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Digi Gold Page
    Log To Console  Digi Gold
    Verify Text On Page  ${e_gold_screenTitle}