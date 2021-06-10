*** Keywords ***

Verify PostLogin FD Portfolio Menu Navigation With KYC
    Log To Console  FD Portfolio Navigation With KYC
    Navigate To PortFolio Tab And Verify Investment Title  ${KU_W_portfolio_FD_title}  ${e_portfolio_FD_title}  ${KU_W_portfolio_FD_subtitle}  ${e_portfolio_FD_subTitle}
    Wait And Click  ${KU_W_portfolio_FD_title}
    Verify Page Contains Element  ${KU_W_FD_allFDTab}
    Go Back