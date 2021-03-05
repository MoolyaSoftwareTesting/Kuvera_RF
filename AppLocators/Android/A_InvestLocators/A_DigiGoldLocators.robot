*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_invest_DG_sellRateLabel} =  Live Sell Rate
${e_invest_DG_loginToSellGold} =  Log in to sell gold.
${e_invest_DG_SIPGold} =  Start gold SIP with Kuvera
${e_invest_DG_addGoldPurchased} =  Add gold purchased outside Kuvera

# Application Locator 'KU_<locatorName>'
${KU_A_invest_DG_imgfromExplore} =  xpath=//*[@text='gold']
${KU_A_invest_DG_title} =  xpath=//*[@text='Digi gold']
${KU_A_invest_DG_sellImg} =  xpath=//*[@text='sell-active']
${KU_A_invest_DG_buyImg} =  xpath=//*[@text='buy-active']
${KU_A_invest_DG_buyIcon} =  xpath=//*[@text='Buy']
${KU_A_invest_DG_refreshIcon} =  xpath=//*[@text='refresh-4']
${KU_A_invest_DG_sellIcon} =  xpath=//*[@text='Sell']
${KU_A_invest_DG_liveGoldVal} =  xpath=//android.widget.Toast[1]
${KU_A_invest_DG_sell_SIPGoldImg} =  xpath=//*[@text='no-logged-sell-gold']
${KU_A_invest_DG_SIPImg} =  xpath=//*[@text='active-start-sip-2']
${KU_A_invest_DG_startSIP} =  xpath=//*[@text='Start SIP']
${KU_A_invest_DG_noAccountMsg} =  xpath=//*[@text='Don’t have an account?']
${KU_A_invest_DG_trackIcon} =  xpath=//*[@text='Track']
${KU_A_invest_DG_trackImg} =  xpath=//*[@text='add-gold-active']
${KU_A_invest_DG_loginToSIPGold} =  xpath=//*[@text='Log in to start gold SIP.']
${KU_A_invest_DG_loginToAddGold} =  xpath=//*[@text='Log in to add gold.']