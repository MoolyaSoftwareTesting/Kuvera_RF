*** Settings ***

# Import Pages for Tests
Resource    ../../Resources/Utils/DesktopWeb/Common.robot
Resource    ../../Resources/Utils/DesktopWeb/LandingPage.robot
Resource    ../../Resources/Utils/DesktopWeb/Login.robot
Resource    ../../Resources/Utils/DesktopWeb/Signup.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/InvestLandingPage.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/SaveSmart.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/GiltFunds.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/DigitalGold.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/EquityIndex.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/SectorFunds.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/BankPSUBonds.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/ELSSTaxSaver.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/Crypto.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/FD.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/USETF.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/ValueFunds.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/52WkHighIndia.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/52WkHighUS.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/UltraShort.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/MutualFunds.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/Stocks.robot
Resource    ../../Resources/Utils/DesktopWeb/Invest/USStocks.robot
Resource    ../../Resources/Utils/DesktopWeb/Loans.robot
Resource    ../../Resources/Utils/DesktopWeb/Insure.robot
Resource    ../../Resources/Utils/DesktopWeb/Remit.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/SetAGoal.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/OwnAHome.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/BuyACar.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/SaveTax.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/RetireEasy.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/EducateMyChild.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/ForeignVacation.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/25thAnniversary.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Goals/CreateMyGoal.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/TradeSmart.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/FamilyAccount.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/ManageAccount.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/TaxHarvesting.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/SaveTaxes.robot
Resource    ../../Resources/Utils/DesktopWeb/Features/Consolidate.robot
Resource    ../../Resources/Utils/DesktopWeb/Footer.robot
Resource    ../../Resources/Utils/DesktopWeb/FundHouse.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/CreateAccountForPostLogin.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/HealthInsurance/KYC.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/HealthInsurance/PlanHealthInsurance.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/HealthInsurance/HealthInsuranceLandingPage.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/HealthInsurance/LoginPostHealthInsuranceClaim.robot
Resource    ../../Resources/Utils/DesktopWeb/UnauthenticatedLinks/LiquidFunds.robot
Resource    ../../Resources/Utils/DesktopWeb/UnauthenticatedLinks/ForgotPassword.robot
Resource    ../../Resources/Utils/DesktopWeb/UnauthenticatedLinks/ESignKYCInvalidRequest.robot
Resource    ../../Resources/Utils/DesktopWeb/UnauthenticatedLinks/ESignKYCFailed.robot
Resource    ../../Resources/Utils/DesktopWeb/UnauthenticatedLinks/ESignKYCCompleted.robot
Resource    ../../Resources/Utils/DesktopWeb/UnauthenticatedLinks/AmazonSaveShop.robot
Resource    ../../Resources/Utils/DesktopWeb/UnauthenticatedLinks/GoldRush.robot
Resource    ../../Resources/Utils/DesktopWeb/UnauthenticatedLinks/DhanterasGoldOffer.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/KYCFlows/PANVerifiedKYC.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/KYCFlows/UnverifiedKYC.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Dashboard/DashboardWidgets.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Dashboard/DashboardTopHeaders.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Dashboard/DashboardLeftHeaders.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/InviteFriends.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/ManageFolio.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Reports.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/InvestExplore/Po_MF.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/InvestExplore/Po_Stocks.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/InvestExplore/Po_USStocks.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/InvestExplore/Po_SaveSmart.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/InvestExplore/Po_Crypto.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/InvestExplore/Po_DigiGold.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/InvestExplore/Po_FD.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Portfolio/Portfolio_MF.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Portfolio/Portfolio_Stocks.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Portfolio/Portfolio_USStocks.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Portfolio/Portfolio_SaveSmart.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Portfolio/Portfolio_Gold.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Portfolio/Portfolio_EPF.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Portfolio/Portfolio_FD.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/SIPSTPSWP.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Po_Features/Po_SetAGoal.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Po_Features/Po_TradeSmart.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Po_Loans.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/SetAGoal_LeftBar.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Po_Remit.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Po_LandingPage.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Settings/DeactivateAccount.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/Settings/TwoFactorAuthentication.robot
Resource    ../../Resources/Utils/DesktopWeb/PostLoginFlows/UserWithInvestment/MF.robot
