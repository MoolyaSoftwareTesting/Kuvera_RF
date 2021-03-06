*** Variables *** 
# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_subscription_subscriptionTitle} =  xpath=//h1[normalize-space()='Subscriptions']
${KU_W_subscription_subscriptionTab} =  xpath=//div[normalize-space()='Subscriptions']
${KU_W_subscription_taxHarvestingTitle} =  xpath=//p[normalize-space()='Tax Harvesting']
${KU_W_subscription_taxHarvestingSubTitle} =  xpath=//p[normalize-space()='Reduce LTCG tax impact.']
${KU_W_subscription_THLearnMore} =  xpath=(//p[@class='profile-subscriptions__subscription-learn-more-link'])[1]
${KU_W_subscription_TSLearnMore} =  xpath=(//p[@class='profile-subscriptions__subscription-learn-more-link'])[2]
${KU_W_subscription_FALearnMore} =  xpath=(//p[@class='profile-subscriptions__subscription-learn-more-link'])[3]
${KU_W_subscription_tradeSmartTitle} =  xpath=//p[normalize-space()='TradeSmart']
${KU_W_subscription_familyAccountTitle} =  xpath=//p[normalize-space()='Family Account']
${KU_W_subscription_THYearlyVal} =  xpath=//div[@class='profile-subscriptions__req-coins-details']//p[@class='profile-subscriptions__req-coins'][normalize-space()='499']
${KU_W_subscription_THFYLabel} =  xpath=//div[@class='profile-subscriptions__req-coins-details']//p[@class='profile-subscriptions__coin-per-year'][normalize-space()='per FY']
${KU_W_subscription_THActivateBtn} =  xpath=(//button[@class='button-primary profile-subscriptions__subscribe-btn profile-subscriptions__btn'])[1]
${KU_W_subscription_TSYearlyVal} =  xpath=//div[@class='profile-subscriptions__req-coins-details']//p[@class='profile-subscriptions__req-coins'][normalize-space()='300']
${KU_W_subscription_lifelongTSLabel} =  xpath=(//p[contains(text(),'Lifelong')])[1]
${KU_W_subscription_lifelongFALabel} =  xpath=(//p[contains(text(),'Lifelong')])[3]
${KU_W_subscription_TSActivateBtn} =  xpath=(//button[@class='button-primary profile-subscriptions__subscribe-btn profile-subscriptions__btn'])[2]
${KU_W_subscription_FAActivateBtn} =  xpath=(//button[@class='button-primary profile-subscriptions__subscribe-btn profile-subscriptions__btn'])[3]
${KU_W_subscription_FAYearlyVal} =  xpath=//div[@class='profile-subscriptions__req-coins-details']//p[@class='profile-subscriptions__req-coins'][normalize-space()='200']
${KU_W_subscription_subscriptionLink} =  xpath=//span[normalize-space()='Subscriptions']
${KU_W_subscription_FACoinTitle} =  xpath=//p[contains(.,'Get 200 coins more to activate this feature.')]