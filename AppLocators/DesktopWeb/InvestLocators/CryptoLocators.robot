*** Variables *** 
# Application Expected Values 'e_<variableName>'
# Crypto 
${e_crypto_year} =  1Y
${e_crypto_perInYearVal} =  %
${e_crypto_volume} =  Volume
${e_crypto_subText} =  I am interested in crypto beta 
${e_crypto_todaysHighLabel} =  Today’s high
${e_crypto_todaysLowLabel} =  Today’s low 
${e_crypto_help} =  Help

# Application Locator 'KU_<locatorName>'
# Crypto Landing Navigation Page
${KU_W_crypto_tabName} =  xpath=//div[contains(text(),'All crypto')]
${KU_W_crypto_titlefromExplore} =  xpath=//span[contains(.,'Crypto')]
${KU_W_crypto_coinName} =  xpath=(//span[@class='b-crypto-explore__name'])[1]
${KU_W_crypto_bidPrice} =  xpath=(//span[contains(text(),'Bid')])[1]
${KU_W_crypto_offerPrice} =  xpath=(//span[contains(text(),'Offer')])[1]
${KU_W_crypto_imgIcon} =  xpath=(//img[@class='b-crypto-explore__icon'])[1]
${KU_W_crypto_priceLabel} =  xpath=(//div[contains(text(),'Price')])[1]
${KU_W_crypto_priceVal} =  xpath=(//div[@class='b-crypto-explore__content-info-value'])[1]
${KU_W_crypto_yearLabel} =  xpath=(//div[@class='b-crypto-explore__content-info-key'])[2]
${KU_W_crypto_VolumeLabel} =  xpath=(//div[@class='b-crypto-explore__content-info-key'])[3]
${KU_W_crypto_yearVal} =  xpath=(//span[contains(@class,'b-crypto-explore__content-info-value b-crypto-explore__content-1D')])[1]
${KU_W_crypto_perInYearVal} =  xpath=(//span[contains(.,'%')])[1]
${KU_W_crypto_NAInYearVal} =  xpath=(//span[contains(.,'NA')])[1]
${KU_W_crypto_coinNameOnDetails} =  xpath=//div[@class='b-crypto-detailed-wrapper-fund-name']
${KU_W_crypto_refrescryptocon} =  xpath=//img[@class='b-crypto-basic-info__refresh-icon']
${KU_W_crypto_navVal} =  xpath=//span[@class='b-crypto-basic-info__nav-value']
${KU_W_crypto_date_time} =  xpath=//span[@class='b-crypto-detailed-price__content-info-value--nav-right']
${KU_W_crypto_navRate} =  xpath=//span[contains(@class,'b-crypto-detailed-price__content-info-value--nav-right b-crypto-detailed-price__content-1D')]
${KU_W_crypto_boxIcon} =  xpath=//img[@class='b-crypto-detailed__signup-box-icon']
${KU_W_crypto_subText} =  xpath=//div[@class='b-stocks-widget__content-subtext']
${KU_W_crypto_keepMePostedBtn} =  xpath=//button[normalize-space()='Keep me posted']
${KU_W_crypto_todaysHighLabel} =  xpath=(//div[@class='b-crypto-summary__detail-key'])[2]
${KU_W_crypto_todaysLowLabel} =  xpath=(//div[@class='b-crypto-summary__detail-key'])[3]
${KU_W_crypto_volLabel} =  xpath=(//div[@class='b-crypto-summary__detail-key'])[4]
${KU_W_crypto_helpIcon} =  xpath=//span[@class='faq-bot-button-text']
${KU_W_crypto_mailIcon} =  xpath=//div[@class='full-height']//a[5]//img[1]
${KU_W_crypto_copyIcon} =  xpath=//div[@class='b-app-standard-social-options-button']//img
${KU_W_crypto_copyMsg} =  xpath=//div[text()='Copied link to clipboard']
${KU_W_crypto_sharingIcon} =  xpath=//div[@class='b-crypto-basic-info__share-icon--desktop']