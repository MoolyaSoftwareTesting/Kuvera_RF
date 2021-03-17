*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_prod} =  prod
${e_title} =  Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${e_regulatoryDisclosure} =  Regulatory Disclosure
${e_login} =  Log in 
${e_loginPageTitle} =  Login. Start Investing.
${e_emailLabel} =  EMAIL ADDRESS
${e_login_passwordLabel} =  PASSWORD
${e_signup} =  Sign up 
${e_signup_setPasswordLabel} =  SET A PASSWORD
${e_signup_mobileLabel} =  MOBILE
${e_signupPageTitle} =  Sign Up. Start Investing.
${e_mfWelcomeTitle} =  Investments Simplified
${e_mf_welcomeText} =  First free Direct Mutual Fund investing platform. Zero fees, higher returns.
${e_mfCategory} =   Equity
${e_mfSubCategory} =   All
${e_startInvestingBtn} =  Start Investing
${e_exploreELSSfundsBtn} =  Explore ELSS funds
${e_learnMoreLinkText} =   Learn more
${e_startHarvestingBtn} =   Start harvesting
${e_switchTodayBtn} =  Switch Today
${e_switchTodayLinkTitle} =  3 ways to "SWITCH" your Regular plans to Direct Mutual Fund plans - Kuvera
${e_upgradeFamilyAccountBtn} =  Upgrade to family account
${e_familyAccountLinkTitle} =  Joint And Family Accounts on Kuvera - Kuvera
${e_consolidateTrackBtn} =  Consolidate & track
${e_consolidateTrackLinkTitle} =  Automatic tracking of external transactions | Wealth Management Simplified | Kuvera
${e_manageTodayBtn} =  Manage Today
${e_manageTodayLinkTitle} =  Managed Accounts: add a manager to handhold your Kuvera account - Kuvera
${e_setAGoalBtn} =  Set a goal
${e_setAGoalLinkTitle} =  Unified goal planning or how to invest less and achieve your financial goals? - Kuvera
${e_sendMoneyBtn} =  Send money
${e_sendMoneyLinkTitle} =  Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${e_summaryHeader} =   Earn up to 35% more in 20 years*
${e_careTitle} =  How much do we care?
${e_careInfoMsg} =  Our CEO, Gaurav Rastogi, invites you to share your questions, comments or feedback. Email him
${e_adviceContent} =   Our team’s successful money management experience, applied strategies and real-time data-driven approach ensure our recommendations are rooted in reality.
${e_adviceTeam} =   More about our team
${e_emailLink} =  Email him
${e_usersLove} =  Our users love us
${e_usersMsg} =   We revolutionized the way India invests. With your feedback we are making it even better.
${e_earnTitle} =  Earn up to 1.5% more returns*
${e_earnMsg} =  We pioneered commission free Direct Plan investing.\nEarn from our expertise and don't pay commission ever.
${e_earnLearnLink} =   Learn how!
${e_coreAUAValue} =  ₹ 20,000
${e_coreAUAText} =  Crore AUA       
${e_citiesValue} =  4 Lakh
${e_citiesText} =   Goals
${e_transValue} =   2.4 Crore
${e_transText} =  Transactions

${e_stock_filterTitleText} =  Filter
${e_stock_filterTxt} =  Sector
${e_stock_subFilterTxt} =  Industry
${e_stock_headerTxt} =  Stocks   
${e_stock_subHeaderTxt} =  Explore, Invest and track all your stock investments
${e_usstock_headerTxt} =  Diversify with US stocks
${e_usstock_subHeaderTxt} =  Zero commission. Start with $10.
${e_ss_headerTxt} =  Start SaveSmart today 
${e_gold_headerTxt} =  Buying gold has never been this simple!
  
    


#Feature-Widgets Variables
${e_feature_th_TitleText} =  Save up to ₹10,000 in LTCG taxes every financial year with Tax Harvesting.
${e_feature_ts_titleText} =  TradeSmart
${e_feature_fa_screenTitle} =  Invest with Your Loved Ones
${e_feature_manageAccountTitleText} =  Manage Account
${e_feature_sg_screenTitle} =  Set your goal
${e_remit_screenTitle} =  A cheaper & faster way to send money home




@{e_fndHouse_firstColumn} =  ADITYA BIRLA SUN LIFE  AXIS  BARODA  BHARTI AXA  BNP PARIBAS  CANARA ROBECO  DSP  EDELWEISS  ESSEL  FRANKLIN TEMPLETON    HDFC  HSBC  ICICI  PRUDENTIAL  IDBI  IDFC  IIFL  INDIA BULLS  INVESCO  ITI  JM FINANCIAL    
@{e_fndHouse_secondColumn} =  KOTAK  L&T  LIC  MAHINDRA  MIRAE ASSET  MOTILAL OSWAL  NIPPON INDIA  PGIM INDIA  PPFAS    PRINCIPAL  QUANT  QUANTUM  SBI  SUNDARAM  TATA  TAURUS  UNION  UTI  YES 


# Application Locator 'KU_<locatorName>'
# Kuvera :: Wealth Management Simplified
${KU_W_regulatoryDisclosure} =  xpath=//h1[@class='b-regulatory-disclosure__heading'] 
${KU_W_logo_signup} =  xpath=//a[@class='navbar-brand active']/img
# ${KU_W_title}=  Kuvera - Direct Mutual Funds | Stocks | Loans | Gold | Remit on Kuvera- Wealth Management Simplified
${KU_W_logo} =  xpath=//*[@class='b-header__content__logo']
${KU_W_close} =  xpath=//button[@class='button-primary b-regulatory-disclosure__btn']
${KU_W_bannerFrame} =  xpath=//iframe[contains(@id,'container')]
#${KU_W_sliderContentFrame} =  xpath=//iframe[contains(@class,'hellobar hb-animateIn')]
${KU_W_bannerCloseBtn} =  xpath=(//*[@class='icon-close'])[2]
${KU_W_menu} =  xpath=//*[@class='b-header__content']
${KU_W_headers} =  xpath=//*[@class='b-header__content__middle']/a
${KU_W_exploreELSS} =  xpath=//button[contains(text(),'Explore ELSS funds')]
${KU_W_login} =  xpath=//a[@class='b-header__content__right__signin']	
${KU_W_loginPageTitle} =  xpath=//div[contains(text(),'Login. Start Investing.')]
${KU_W_signup} =   xpath=//a[@class='b-header__content__right__singup']
${KU_W_signupPageTitle} =  xpath=//div[contains(text(),'Sign Up. Start Investing.')]

${KU_W_emailLabel} =  xpath=//label[contains(text(),'Email Address')]
${KU_W_emailTxt} =  id=email
${KU_W_login_passwordLabel} =  xpath=//label[contains(text(),'Password')]
${KU_W_passwordTxt} =  id=password
${KU_W_login_forgotPasswordLink} =  xpath=//span[@class='link forgot-password']
${KU_W_googleSigninButton} =  xpath=//button[@class='btn in-btn-google']
${KU_W_fbSigninButton} =  xpath=//button[@class='btn in-btn-fb']
${KU_W_signup_mobileLabel} =  xpath=//label[contains(text(),'Mobile')]
${KU_W_signup_mobileTxt} =  id=mobile_number
${KU_W_signup_setPasswordLabel} =  xpath=//label[contains(text(),'Set a Password')]
${KU_W_signup_inviteCodeLabel} =  xpath=//label[contains(text(),'invite code (optional)')]
${KU_W_signup_inviteCodeTxt} =  id=invite_code
${KU_W_signup_signupButton} =  xpath=//*[@class='upcase btn in-btn']

${KU_W_langSwitch} =  xpath=//div[@class='b-header__content__right--language-switcher']

${KU_W_mf_category} =   xpath=//div[@class='b-mf-wiget__mf-category--input']
${KU_W_mf_subcategory} =  xpath=//div[@class='b-mf-wiget__mf-subcategory--input']
${KU_W_fund_list} =   xpath=//div[@class='b-fund-list__row b-fund-list__row--custom']
${KU_W_loginpage_loginButton} =   xpath=//button[@class='button-primary']                        
${KU_W_loginButton} =   xpath=//button[@class='button-primary b-login-signup__login']
${KU_W_signUpButton} =  xpath=//button[@class='button-primary b-login-signup__register'] 
${KU_W_explore_MF} =  xpath=//button[contains(text(),'Explore mutual funds')] 

${KU_W_mf_listIcon} =   xpath=//img[@class='b-fund-list__watchlist-icon']  
${KU_W_mf_mfTab} =   xpath=(//div[contains(text(),'Mutual Funds')])[1]             
${KU_W_android_image} =  xpath=//img[@class='b-mobile-first__img-android']
${KU_W_apple_image} =   xpath=//img[@class='b-mobile-first__img-apple']
${KU_W_coreaua_val} =   xpath=//div[@class='b-investment-count__count__aua__val']
${KU_W_coreaua_text} =  xpath=//div[@class='b-investment-count__count__aua__text']

${KU_W_stock_filterTitle} =   xpath=//span[@class='b-explore-stock__action-title b-explore-stock__filter-action-title']
${KU_W_stock_filter} =   xpath=//div[@class='b-filter-stock__box-sector']
${KU_W_stock_fundList} =   xpath=//div[@class='b-explore-stocks--widget-container']
${KU_W_stock_listIcon} =   xpath=(//img[@class='b-stocks-explore__watchlist-icon'])[1]
${KU_W_mf_stock_button} =   xpath=//div[contains(text(),'Stocks')]
${KU_W_stock_subFilter} =  xpath=//div[@class='b-filter-stock__box b-filter-stock--dropdown-title--disabled b-filter-stock__box--widget']
${KU_W_stock_subHeader} =  xpath=//div[@class='b-stocks-home__text']
${KU_W_stock_header} =  xpath=//div[@class='b-stocks-home__title']

${KU_W_USStockButton} =  xpath=//div[contains(text(),'US stocks')]
${KU_W_usstock_filter} =  xpath=//div[@class='b-action-bar__filter__item__sector']
${KU_W_usstock_subFilter} =  xpath=//div[@class='b-action-bar__filter__item__geography__label']
${KU_W_usstock_fundList} =  xpath=//div[@class='b-us-stocks--widget-container']
${KU_W_usstock_listIcon} =  xpath=(//img[@class='b-stock-item__row1__bookmark'])[1]
${KU_W_usstock_filterTitle} =  xpath=//div[@class='b-action-bar__filter__header__label']
${KU_W_usstock_header} =  xpath=//div[@class='b-us-stocks-widget__introduction__detail__title1']
${KU_W_usstock_subHeader} =  xpath=//div[@class='b-us-stocks-widget__introduction__detail__sign-up']

${KU_W_saveSmartButton} =  xpath=//div[contains(text(),'SaveSmart')]
${KU_W_saveSmartTitle} =  xpath=//div[@class='b-save-smart-home__title']

${KU_W_goldButton} =  xpath=(//div[contains(text(),'Gold')])[1]
${KU_W_goldTitle} =  xpath=//div[contains(@class,'b-gold-widget-content__title')]

${KU_W_cities_val} =  xpath=//div[@class='b-investment-count__count__cities__val']
${KU_W_cities_text} =   xpath=//div[@class='b-investment-count__count__cities__text']
${KU_W_trans_val} =  xpath=//div[@class='b-investment-count__count__transaction__val']
${KU_W_trans_text} =  xpath=//div[@class='b-investment-count__count__transaction__text']
${KU_W_faqbot_icon} =   xpath=//div[@class='faq-bot-button faq-bot-button--show']
${KU_W_faqbotFrame} =  xpath=//iframe[@id='faq-bot-iframe']
${KU_W_faqbotCloseBanner} =  xpath=//div[@class='faq-bot-top-banner-cross']
${KU_W_faqbotQA1} =  xpath=(//div[@class='qa-q-item-title']/a)[1]
${KU_W_mf_welcomeTitle} =  xpath=//div[@class='b-investment-simplified__title']
${KU_W_mf_welcomeText} =  xpath=//div[@class='b-investment-simplified__text']

${KU_W_ELSS_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[1]
${KU_W_ELSS_searchFundBar} =  xpath=(//div[@class='b-explore-fund__action-title'])[1]
${KU_W_startHarvest} =  xpath=//button[contains(text(),'Start harvesting')]
${KU_W_harvest_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[2]
${KU_W_switchToday} =   xpath=//button[contains(text(),'Switch Today')]
${KU_W_switchToday_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[3]
${KU_W_next_button} =   xpath=//div[@class='b-feature-card-list__btns__next b-feature-card-list__btns__next--active']
${KU_W_upgrade_familyAccount} =  xpath=//button[contains(text(),'Upgrade to family account')]
${KU_W_familyAccount_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[4]
${KU_W_consolidate_track} =  xpath=//button[contains(text(),'Consolidate & track')]
${KU_W_automatedTrack_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[5]
${KU_W_manage_today} =  xpath=//button[contains(text(),'Manage Today')]
${KU_W_manageToday_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[6]
${KU_W_set_a_goal} =  xpath=//button[contains(text(),'Set a goal')]
${KU_W_setAGoal_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[7]
${KU_W_send_money} =  xpath=//button[contains(text(),'Send money')]
${KU_W_sendMoney_learnMoreLink} =  xpath=(//a[@class='b-feature-card__link'])[8]
${KU_W_summary_msg} =   xpath=//div[@class='b-feature-summary__percent__summary__msg__heading']
${KU_W_summary_learn} =   xpath=//a[@class='b-feature-summary__percent__summary__learn']
${KU_W_care_title} =  xpath=//div[@class='b-care__title']
${KU_W_care_info_msg} =   xpath=//div[@class='b-care__info__message']
${KU_W_careInfoEmailLink} =  xpath=//a[@class='b-care__info__email']
${KU_W_advice_Title} =  xpath=//div[@class='b-why-kuvera__content__messages__grid1__advice__title']
${KU_W_advice_content} =  xpath=//div[@class='b-why-kuvera__content__messages__grid1__advice__content']
${KU_W_advice_team} =   xpath=//a[@class='b-why-kuvera__content__messages__grid1__advice__team']
${KU_W_why_startInvesing} =  xpath=//button[@class='button-primary b-why-kuvera__btn']

${KU_W_happyUsers} =   xpath=//div[@class='b-users__happy-user']
${KU_W_users_love} =   xpath=//div[@class='b-users__love']
${KU_W_users_msg} =  xpath=//div[@class='b-users__message']
${KU_W_earn_title} =   xpath=//div[@class='b-earn__text-content__title']
${KU_W_earn_msg} =   xpath=//div[@class='b-earn__text-content__message']
${KU_W_earn_learnLink} =  xpath=//a[@class='b-earn__text-content__learn']
${KU_W_start_investButton} =   xpath=//button[@class='button-primary b-start-invest__text-content__btn']
${KU_W_fundHouse_title} =   xpath=//div[@class='b-fund-house__info__title1']
${KU_W_fundHouse_subtitle} =   xpath=//div[@class='b-fund-house__info__title2']
${KU_W_ab_fundHouse} =  xpath=//a[contains(text(),'ADITYA BIRLA SUN LIFE')]
${KU_W_axis_fundHouse} =  xpath=//a[contains(text(),'AXIS')]
${KU_W_fundHouse_title} =   xpath=//div[@class='b-fund-house__info__title1']
${KU_W_fundHouse_subtitle} =   xpath=//div[@class='b-fund-house__info__title2']
${KU_W_fundHouses_firstColumn} =  xpath=//div[@class='b-fund-house__list__column']/a
${KU_W_fundHouses_secondColumn} =  xpath=//div[@class='b-fund-house__list__column b-fund-house__list__column--col2']/a

# Feature-Widgets
${KU_W_searchBarForFunds} =  xpath=(//div[@class='b-explore-fund__action-title'])[1]
${KU_W_feature_th_screenTitle} =  xpath=//div[@class='paras-about-tax-harvesting']/h3
${KU_W_feature_ts_title} =  xpath=//div[@class='b-trade-smart__header__desc__title'] 
${KU_W_feature_fa_screenTitle} =  xpath=//h1[@class='b-family-account__what__heading']
${KU_W_feature_manageAccountTitle} =  xpath=//div[@class='b-manage-account__what']/h1
${KU_W_remit_screenTitle} =  xpath=//div[@class='b-introduction__desc']//div[2]