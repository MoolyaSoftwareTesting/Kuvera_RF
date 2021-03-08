*** Variables ***

# Desired Capabilities
${server} =  http://localhost:4723/wd/hub
${app_package} =  com.gooogle.android.kuvera.app
${app_activity} =  com.gooogle.android.kuvera.app.MainActivity
${appium} =  appium
${apkPath} =  Resources/APK/Kuvera-prod-1.169.1.apk
# Browserstack Credentials
${browserstack_userName} =  username
${browserstack_accessKey} =  accesskey
${remote_URL}    http://${browserstack_userName}:${browserstack_accessKey}@hub.browserstack.com:80/wd/hub

# Application Expected Values 'e_<VariableName>'
${e_realDevice} =  Local
${e_browserstackDevice} =  Browserstack
${e_loansPage} =  Loans
${e_remitPage} =  Remit
${e_insurePage} =  Insure
${e_setAGoalPage} =  Set a Goal
${e_tradeSmart} =  TradeSmart
${e_familyAccountPage} =  Family Account
${e_manageAccountPage} =  Manage Account
${e_taxHarvestingPage} =  Tax Harvesting
${e_saveTaxesPage} =  Save Taxes
${e_consolidatePage} =  Consolidate
${e_signupLink} =  Sign up
${e_MFLabel} =  Mutual Funds
${e_MFTitle} =  Investments Simplified
${e_MFSubTitle} =  First free direct mutual fund investing platform zero fees, higher returns
${e_MF_navLabel} =  NAV
${e_MF_1YLabel} =  1Y
${e_MF_3YLabel} =  3Y
${e_MF_allFundsLabel} =  All funds
${e_loginLink} =  Log in
${e_loginTitle} =  Login. Start Investing.
${e_signupTitle} =  Sign Up. Start Investing.
${e_croreAUAVal} =  ₹ 20,000
${e_croreAUALabel} =  Crore AUA
${e_goalsLabel} =  Goals
${e_goalsVal} =  4 Lakh
${e_transactionsLabel} =  Transactions
${e_transactionsVal} =  2.4 Crore
${e_stocksLabel} =  Stocks
${e_stocksSubTitle} =  Explore, Invest and track all your stock investments
${e_stocks_allStocksTab} =  All stocks
${e_USStocksLabel} =  US stocks
${e_USStocksTitle} =  Diversify with US stocks
${e_USStocksSubTitle1} =  Powered by
${e_USStocksSubTitle2} =  Zero commission. Start with $10.
${e_USStocks_allUSStocksTab} =  All US stocks
${e_savesmartLabel} =  SaveSmart
${e_savesmartTitle} =  Best deposit account in India!
${e_savesmartSubTitle} =  Higher returns, instant withdrawal, better than any savings account.
${e_SS_startSaveSmart} =  Start SaveSmart today
${e_SS_amount} =  2000
${e_SS_screenTitle} =  The smart way to save!
${e_goldLabel} =  Gold
${e_goldTitle} =  Buying gold has never been this simple!
${e_goldSubTitle} =  Buy and sell 24K 99.9% pure digital gold - easily and securely.
${e_gold_partnerLabel} =  Partner
${e_gold_purityLabel} =  Purity
${e_gold_purityValue} =  24K 99.9%
${e_gold_buyRateLabel} =  Live Buy Rate
${e_gold_partner} =  Augmont
${e_gold_rupeeIcon} =  ₹
${e_gold_liveGoldValue} =  4,914.52
${e_gold_unit} =  /gm
${e_gold_enterAmtLabel} =   Enter Amount
${e_gold_enterGmLabel} =  Enter Grams
${e_gold_gramValue} =  1
${e_gold_comingSoon} =  Coming soon: Gold gifting & delivery.
${e_gold_purchaseT&C} =  *Purchased gold can be sold after 7 days.
${e_gold_screenTitle} =  Buy 24K 99.9% pure digital gold - easily and securely.
${e_investYourWayTitle} =  Invest your way
${e_oneLoginTitle} =  One login. All features.
${e_noAccountYet} =  Don't have an account? 
${e_emailAddressLabel} =  EMAIL ADDRESS
${e_passwordLabel} =  PASSWORD
${e_forgotPasswordTitle} =  FORGOT PASSWORD
${e_ORLabel} =  OR
${e_signupSubTitle} =  Get on board India’s friendliest investing platform!
${e_alreadyHaveAcc} =  Already have an account? 
${e_mobileLabel} =  MOBILE
${e_inviteMsg} =  Use your friends invite code and earn 100 coins on signup.
${e_setPasswordLabel} =  SET A PASSWORD
${e_inviteCodeLabel} =  INVITE CODE (OPTIONAL)

# Application Locator 'KU_<locatorName>'
${KU_A_slider5} =  xpath=//*[@text="Go to slide 5"]
${KU_A_slider1} =  xpath=//*[@text="Go to slide 1"]
${KU_A_skip} =  xpath=//*[@text="Skip"]
${KU_A_logo} =  xpath=//*[@text='kuvera-logo-dark']
${KU_A_close} =  xpath=//*[@text='Close']
${KU_A_hamburgerMenu} =  xpath=//*[@text='hamburger-menu']
${KU_A_signupLink} =  xpath=//*[@text='Sign up']
${KU_A_MFLabel} =  xpath=//*[@text='Mutual Funds']
${KU_A_MFTitle} =  xpath=//*[@text='Investments Simplified']
${KU_A_MFSubTitle} =  xpath=//*[@text='First free direct mutual fund investing platform zero fees, higher returns.']
${KU_A_loginLink} =  xpath=//*[@text='Log in']
${KU_A_loginTitle} =  xpath=//*[@text='Login. Start Investing.']
${KU_A_signupTitle} =  xpath=//*[@text='Sign Up. Start Investing.']
${KU_A_signupBtn} =  xpath=(//*[@text='Sign up'])[2]
${KU_A_croreAUALabel} =  xpath=//*[@text='Crore AUA']
${KU_A_goalsLabel} =  xpath=//*[@text='Goals']
${KU_A_transactionsLabel} =  xpath=//*[@text='Transactions']
${KU_A_stocksLabel} =  xpath=//*[@text='Stocks']
${KU_A_stocksTitle} =  xpath=(//*[@text='Stocks'])[1]
${KU_A_US_stocks_priceLabel} =  xpath=//*[@text='Price']
${KU_A_US_stocks_yearLabel} =  xpath=//*[@text='1Y']
${KU_A_US_stocks_mktCapLabel} =  xpath=//*[@text='Mkt cap']
${KU_A_stocks_exploreStocksBtn} =  xpath=//*[@text='Explore stocks']
${KU_A_stocks_allStocksTab} =  xpath=//*[@text='All stocks']
${KU_A_stocksImg} =  xpath=//*[@text='stocks-ill']
${KU_A_stocksSubTitle} =  xpath=//*[@text='Explore, Invest and track all your stock investments']
${KU_A_USStocksLabel} =  xpath=//*[@text='US stocks']
${KU_A_USStocksTitle} =  xpath=//*[@text='Diversify with US stocks']
${KU_A_USStocksSubTitle1} =  xpath=//*[@text='Powered by']
${KU_A_USStocks_vestedImg} =  xpath=//*[@text='vested-dark-logo-full']
${KU_A_USStocksSubTitle2} =  xpath=//*[@text='Zero commission. Start with $10.']
${KU_A_USStocks_startTodayBtn} =  xpath=//*[@text='Start today']
${KU_A_USStocks_exploreBtn} =  xpath=(//*[@class='android.widget.Button'])[2]
${KU_A_USStocks_allUSStocksTab} =  xpath=//*[@text='All US stocks']
${KU_A_USStocks_imgIcon} =  xpath=//*[@text='i-stock-explore']
${KU_A_USStocks_exploreUSStocksBtn} =  xpath=//*[@text='Explore US stocks']
${KU_A_savesmartLabel} =  xpath=//*[@text='SaveSmart']
${KU_A_savesmartTitle} =  xpath=//*[@text='Best deposit account in India!']
${KU_A_savesmartSubTitle} =  xpath=//*[@text='Higher returns, instant withdrawal, better than any savings account.']
${KU_A_SS_startSaveSmart} =  xpath=//*[@text='Start SaveSmart today']
${KU_A_inputField} =  xpath=//*[@class='android.widget.EditText']
${KU_A_SS_exploreSSBtn} =  xpath=//*[@text='Explore SaveSmart']
${KU_A_SS_screenTitle} =  xpath=//*[@text='The smart way to save!']
${KU_A_button} =  xpath=//*[@class='android.widget.Button']
${KU_A_gold_buyNowBtn} =  xpath=//android.widget.Button[@text='Buy Now']
${KU_A_goldLabel} =  xpath=//*[@text='Gold']
${KU_A_goldTitle} =  xpath=//*[@text='Buying gold has never been this simple!']
${KU_A_goldSubTitle} =  xpath=//*[@text='Buy and sell 24K 99.9% pure digital gold - easily and securely.']
${KU_A_gold_buyRateLabel} =  xpath=//*[@text='Live Buy Rate']
${KU_A_gold_purityLabel} =  xpath=//*[@text='Purity']
${KU_A_gold_partnerLabel} =  xpath=//*[@text='Partner']
${KU_A_gold_purityValue} =  xpath=//*[@text='24K 99.9%']
${KU_A_gold_partner} =  xpath=//*[@text='Augmont']
${KU_A_gold_unit} =  xpath=//*[@text='/gm']
${KU_A_gold_rupeeIcon} =  xpath=//*[@text='₹']
${KU_A_gold_enterAmtLabel} =  xpath=//*[@text='Enter Amount']
${KU_A_gold_enterGmLabel} =  xpath=//*[@text='Enter Grams']
${KU_A_gold_goldVal} =  xpath=//*[@text='₹ 1,000']
${KU_A_gold_purchaseT&C} =  xpath=//*[@text='*Purchased gold can be sold after 7 days.']
${KU_A_gold_comingSoon} =  xpath=//*[@text='Coming soon: Gold gifting & delivery.']
${KU_A_gold_exploreGold} =  xpath=//*[@text='Explore gold option']
${KU_A_gold_gramOption} =  xpath=//*[@text='0.5 gm']
${KU_A_gold_screenTitle} =  xpath=//*[@text='Buy 24K 99.9% pure digital gold - easily and securely.']
${KU_A_watchListBtn} =  xpath=//*[@text='watchlist-unselected-blue']
${KU_A_MF_exploreMFBtn} =  xpath=//*[@text='Explore mutual funds']
${KU_A_MF_navLabel} =  xpath=//*[@text='NAV']
${KU_A_MF_1YLabel} =  xpath=//*[@text='1Y']
${KU_A_MF_3YLabel} =  xpath=//*[@text='3Y']
${KU_A_MF_allFundsLabel} =  xpath=//*[@text='All funds']
${KU_A_faqBotBtn} =  xpath=//*[@resource-id='faq-bot-codestart-id']
${KU_A_emailField} =  xpath=//*[@resource-id='email']
${KU_A_passwordField} =  xpath=//*[@resource-id='password']
${KU_A_forgotPasswordLink} =  xpath=//*[@text='Forgot password?']
${KU_A_loginBtn} =  xpath=//*[@resource-id='login-btn']
${KU_A_loginGoogleBtn} =  xpath=//*[@resource-id='login-btn-google']
${KU_A_loginFBBtn} =  xpath=//*[@resource-id='login-btn-fb']
${KU_A_mobileNumField} =  xpath=//*[@resource-id='mobile_number']
${KU_A_inviteCodeField} =  xpath=//*[@resource-id='invite_code']
${KU_A_signupBlueBtn} =  xpath=//*[@resource-id='signup-btn']
${KU_A_signupGoogleBtn} =  xpath=//*[@resource-id='signup-btn-google']
${KU_A_signupFBBtn} =  xpath=//*[@resource-id='signup-btn-fb']
${KU_A_hamburger_signupLink} =  xpath=(//*[@text='Sign up'])[3]
${KU_A_botCloseBtn} =  xpath=(//*[@class='android.view.View'])[13]