*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_invest_DG_sellRateLabel} =  Live Sell Rate
${e_invest_DG_SIPGold} =  Start gold SIP with Kuvera
${e_invest_DG_addGoldPurchased} =  Add gold purchased outside Kuvera
${e_invest_DG_kuveraAdvantage} =  The Kuvera Advantage
${e_invest_DG_highestPurity} =  Highest purity.
${e_invest_DG_highestPurityDesc} =  24K 99.9% pure gold.
${e_invest_DG_secure} =  100% secure.
${e_invest_DG_secureDesc} =  Secured in bank grade lockers by Sequel, a global leader in asset security.
${e_invest_DG_fullyLiquid} =  Fully liquid.
${e_invest_DG_fullyLiquidDesc} =  Sell anytime! Receive the amount directly in your bank account.
${e_invest_DG_livePrices} =  Live prices.
${e_invest_DG_livePricesDesc} =  Get live market rates any time you buy or sell gold on Kuvera.
${e_invest_DG_augmont} =  Official partner of Augmont.

# Application Locator 'KU_<locatorName>'
${KU_A_invest_DG_imgfromExplore} =  xpath=//*[@text='gold']
${KU_A_invest_DG_title} =  xpath=//*[@text='Digi gold']
${KU_A_invest_DG_sellImg} =  xpath=//*[@text='sell-active']
${KU_A_invest_DG_buyImg} =  xpath=//*[@text='buy-active']
${KU_A_invest_DG_refreshIcon} =  xpath=//*[@text='refresh-4']
${KU_A_invest_DG_sellIcon} =  xpath=//*[@text='Sell']
${KU_A_invest_DG_liveGoldSellVal} =  xpath=//*[contains(text(),'Gold sell rate is now')]
${KU_A_invest_DG_liveGoldBuyVal} =  xpath=//*[contains(text(),'Gold buy rate is now')]
${KU_A_invest_DG_sell_SIPGoldImg} =  xpath=//*[@text='no-logged-sell-gold']
${KU_A_invest_DG_SIPImg} =  xpath=//*[@text='active-start-sip-2']
${KU_A_invest_DG_startSIP} =  xpath=//*[@text='Start SIP']
${KU_A_invest_DG_noAccountMsg} =  xpath=//*[@text='Don’t have an account?']
${KU_A_invest_DG_trackIcon} =  xpath=//*[@text='Track']
${KU_A_invest_DG_trackImg} =  xpath=//*[@text='add-gold-active']
${KU_A_invest_DG_loginToSellGold} =  xpath=//*[@text='Log in to sell gold.']
${KU_A_invest_DG_loginToAddGold} =  xpath=//*[@text='Log in to add gold.']
${KU_A_invest_DG_secureImg} =  xpath=//*[@text='gold-product-secure']
${KU_A_invest_DG_fullyLiquidImg} =  xpath=//*[@text='gold-product-liquid']
${KU_A_invest_DG_highestPurityImg} =  xpath=//*[@text='gold-product-purity']
${KU_A_invest_DG_livePricesImg} =  xpath=//*[@text='goldProductBestPrice']
${KU_A_invest_DG_augmontImg} =  xpath=//*[@text='goldProductPartner']
${KU_A_invest_DG_botQuestion1} =  xpath=//*[@text='How do I buy Gold on Kuvera?']
${KU_A_invest_DG_loginToSIPGold} =  xpath=//*[@text='Log in to start gold SIP.']