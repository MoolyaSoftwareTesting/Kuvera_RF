*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Verify Android PreLogin Blog Page
    Log To Console  Blog
    Navigate To Hamburger Menu  ${KU_A_blog_blogLink}  ${e_blogLink}
    # Menus
    Verify Page Contains Element On Android  ${KU_A_blog_allBlogLink}
    Verify Page Contains Element On Android  ${KU_A_blog_popularBlogLink}
    Verify Page Contains Element On Android  ${KU_A_blog_allCategoriesLink}
    Verify Text On Page  ${e_blog_kuveraWeeklyTitle}
    Swipe By Percent  85  85  20  20  9000
    Verify Text On Page  ${e_blog_kuverianStories}
    Swipe By Percent  30  30  85  85  5000
    Swipe By Percent  30  30  85  85  5000
    Wait And Click Element On Android  ${KU_A_blog_closeButton}
    Wait And Click Element On Android  ${KU_A_logo}