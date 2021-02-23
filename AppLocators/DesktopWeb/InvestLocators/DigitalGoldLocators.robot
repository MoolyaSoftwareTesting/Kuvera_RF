*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Digital Gold
${e_invest_digiGold_screenText} =  Buy 24K 99.9% pure digital gold - easily and securely.
${e_invest_digiGold_purityHeadingText} =  Highest purity.
${e_invest_digiGold_purityDescText} =  24K 99.9% pure gold.
${e_invest_digiGold_100SecureHeadingText} =  100% secure.
${e_invest_digiGold_100SecureDescText} =  Secured in bank grade lockers by Sequel, a global leader in asset security.
${e_invest_digiGold_fullyLiquidText} =  Fully liquid.
${e_invest_digiGold_fullyLiquidDescText} =  Sell anytime! Receive the amount directly in your bank account.
${e_invest_digiGold_livePricesText} =  Live prices.
${e_invest_digiGold_livePricesDescText} =  Get live market rates any time you buy or sell gold on Kuvera.
${e_invest_digiGold_augmontHeadingText} =  Official partner of Augmont.
${e_invest_digiGold_augmontDescText} =  Kuvera partners with Augmont, India’s leading digital gold platform.
${e_invest_digiGold_augmontLinkText} =  Augmont
${e_invest_digiGold_augmontScreenTitle} =  Augmont Enterprises Private Limited | Buy Gold Silver
${e_invest_digiGoldIsBetterTitleText} =  Digital Gold is better than gold mutual funds!
${e_invest_digiGoldIsBetterDescText} =  Learn more about how digital gold is superior to gold mutual funds.
${e_invest_learnMoreLinkText} =  Learn more 
${e_invest_digitalGoldScreenTitle} =  Digital gold for smart investors - Kuvera Buy digital gold on Kuvera
${e_invest_digiGold_augmontScreenTitle} =  Augmont Enterprises Private Limited | Buy Gold Silver
${e_invest_addGoldTitleText} =   Already Own Gold? Track it!
${e_invest_addGoldDescText} =  Get the full picture of your Gold Portfolio by adding & tracking gold you’ve bought outside of Kuvera. 
${e_invest_addGoldBtnText} =  Add gold you already own        
${e_invest_faqTitleText} =  Questions? We’re happy to help!
${e_invest_faqBtnText} =  View FAQs      
${e_invest_buyGoldTitleText} =  Buy
${e_invest_goldRateTitleText} =  Live Buy Rate
${e_invest_purityTitleText} =  Purity   
${e_invest_purityAmtText} =  24K 99.9%
${e_invest_partnerTitleText} =  Partner      
${e_invest_partnerNameText} =  Augmont 
${e_invest_enterAmtTitleText} =  Enter Amount             
${e_invest_enterGramsTitleText} =  Enter Grams              
${e_invest_digiGold_T&CText} =  *Purchased gold can be sold after 7 days.
${e_invest_comingSoonText} =  Coming soon: Gold gifting & delivery.   
${e_invest_buyNowBtnText} =   Buy Now
${e_invest_sellGoldTitleText} =  Sell
${e_invest_liveSellRateTitleText} =  Live Sell Rate             
${e_invest_logInSellgoldTitleText} =  Log in to sell gold.
${e_invest_noAcntText} =  Don’t have an account? 
${e_invest_SIPTitleText} =  Start gold SIP with Kuvera
${e_invest_SIP_loginTitleText} =  Log in to start gold SIP.
${e_invest_trackTitleText} =  Add gold purchased outside Kuvera 
${e_invest_track_loginTitleText} =  Log in to add gold.
${e_invest_faqbotQA1} =  How do I buy Gold on Kuvera?

# Application Locator 'KU_<locatorName>'
# Digital Gold Navigation Page
${KU_W_dg_screenTitle} =  xpath=//div[@class='buy-gold-heading']
${KU_W_dg_purityHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[1]
${KU_W_dg_purityDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[1]
${KU_W_dg_100SecureHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[2]
${KU_W_dg_100SecureDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[2]
${KU_W_dg_fullyLiquidHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[3]
${KU_W_dg_fullyLiquidDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[3]
${KU_W_dg_livePricesHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[4]
${KU_W_dg_livePricesDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[4]
${KU_W_dg_augmontHeading} =  xpath=(//div[@class='kuvera-advantage-tiles-heading'])[5]
${KU_W_dg_augmontDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[5]
${KU_W_dg_augmontLink} =  xpath=(//a[@class='link'])[1]
${KU_W_digitalGoldIsBetterTitle} =  xpath=//div[@class='section-digital-gold-is-better-heading']
${KU_W_digitalGoldIsBetterDesc} =  xpath=//div[@class='section-digital-gold-is-better-desc']
${KU_W_dg_augmontDesc} =  xpath=(//div[@class='kuvera-advantage-tiles-desc'])[5]
${KU_W_dg_learnMoreLink} =  xpath=(//a[@class='link'])[2]
${KU_W_addGoldHeading} =  xpath=//div[@class='section-add-gold-heading']
${KU_W_addGoldDesc} =  xpath=//div[@class='section-add-gold-desc']
${KU_W_dg_addGoldBtn} =  xpath=//button[normalize-space()='Add gold you already own']
${KU_W_dg_faqHeading} =  xpath=//div[@class='section-faq-heading']
${KU_W_faqBtn} =   xpath=//button[normalize-space()='View FAQs']
${KU_W_dg_faqBotTitle} =  xpath=//span[@class='faq-bot-top-banner-text']
${KU_W_dg_faqCloseBtn} =  xpath=//div[@class='faq-bot-top-banner-cross']
${KU_W_dg_aboutUSLink} =  xpath=//ul[@class='list-unstyled']/li[1]
${KU_W_dg_buyTab} =  xpath=(//div[@class='gold-widget-tab-text'])[1]
${KU_W_dg_liveGoldRateTitle} =  xpath=(//div[@class='b-buy-gold__cumulative-label b-buy-gold__live-buy-rate'])[1]
${KU_W_ratePerGm} =  xpath=(//div[@class='b-buy-gold__cumulative-unit-container'])[1]
${KU_W_goldRateRefreshIcon} =  xpath=(//div[@class='b-buy-gold__refresh-icon'])[1]
${KU_W_dg_buyGoldPurityTitle} =  xpath=(//div[@class='b-buy-gold__cumulative-label'])[1]
${KU_W_dg_toastHeader} =  xpath=//div[@class='b-app-standard-snackbar__box-text']
${KU_W_buyGoldPurityAmt} =   xpath=(//div[@class='b-buy-gold__cumulative-unit b-buy-gold__cumulative-unit--widget'])[2]
${KU_W_dg_buyGoldPartnerTitle} =  xpath=(//div[@class='b-buy-gold__cumulative-label'])[2]
${KU_W_dg_buyGoldPartnerName} =  xpath=(//div[@class='b-buy-gold__cumulative-unit b-buy-gold__cumulative-unit--widget'])[3]
${KU_W_dg_enterAmtTitle} =  xpath=(//div[@class='b-buy-gold__radios__label b-buy-gold__radios__label--selected'])[1]
${KU_W_dg_enterGramsTitle} =  xpath=(//div[@class='b-buy-gold__radios__label b-buy-gold__radios__label--unselected'])[1]
${KU_W_amount} =  xpath=(//div[@class='b-buy-gold__auto-filled-options-button b-buy-gold__auto-filled-options-button--widget'])[2]
${KU_W_buyNowBtn} =  xpath=//button[@class='button-primary b-buy-gold__buy-now-btn']
${KU_W_dg_goldRate} =  xpath=(//div[@class='b-buy-gold__cumulative-unit b-buy-gold__cumulative-unit--widget'])[1]
${KU_W_dg_enterGramsRadioBtn} =  xpath=(//div[@class='b-buy-gold__radio-icon-container--selected'])[1]
${KU_W_enterGram} =   xpath=(//div[@class='b-buy-gold__auto-filled-options-button b-buy-gold__auto-filled-options-button--widget'])[1]
${KU_W_dg_T&C} =  xpath=//div[@class='b-buy-gold__terms b-buy-gold__terms--widget']
${KU_W_dg_comingSoonTitle} =  xpath=(//div[@class='b-buy-gold__coming-soon-text'])[1]
${KU_W_dg_sellGoldTab} =  xpath=(//*[@class='gold-widget-tab-text'])[2]
${KU_W_dg_liveSellRateTitle} =  xpath=//div[@class='b-sell-gold__cumulative-label b-sell-gold__live-sell-rate']
${KU_W_dg_loginIntoSellGoldTitle} =  xpath=//div[@class='b-sell-gold__widget-no-logged-sell-text']
${KU_W_dg_sellGoldRefreshIcon} =  xpath=//img[@class='b-sell-gold__refresh-icon']
${KU_W_dg_sellGoldPurityTitle} =  xpath=(//div[@class='b-sell-gold__cumulative-label'])[1]
${KU_W_dg_sellGoldPartnerTitle} =  xpath=(//div[@class='b-sell-gold__cumulative-label'])[2]
${KU_W_dg_sellGoldPurityAmt} =  xpath=(//div[@class='b-sell-gold__cumulative-unit b-sell-gold__cumulative-unit--widget'])[2]
${KU_W_dg_sellGoldPartnerName} =  xpath=(//div[@class='b-sell-gold__cumulative-unit b-sell-gold__cumulative-unit--widget'])[3]
${KU_W_dg_gold_login} =  xpath=//button[@class='button-primary b-sell-gold__sell-now-btn']
${KU_W_dg_gold_signup} =  xpath=//span[@class='b-sell-gold__sign-up-link--widget']
${KU_W_dg_gold_noAcntMsg} =  xpath=//div[@class='b-sell-gold__sign-up-text-container--widget']/span[1]
${KU_W_dg_goldValue} =  xpath=//div[@class='b-buy-gold__other-value b-buy-gold__text-visible b-buy-gold__other-value--widget']
${KU_W_dg_SIPTab} =  xpath=//div[contains(text(),'Start SIP')]
${KU_W_dg_SIP_Track_Heading} =  xpath=//div[@class='b-log-gold__heading-widget']
${KU_W_dg_loginTitle} =  xpath=//div[@class='b-sell-gold__widget-no-logged-sell-text']
${KU_W_dg_trackTab} =  xpath=//div[@class='gold-widget-tab-text'][normalize-space()='Track']