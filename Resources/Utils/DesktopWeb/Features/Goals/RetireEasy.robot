*** Settings ***

Library     SeleniumLibrary


*** Keywords ***

Verify Retire Easy Questionnaire
    Click Element  ${KU_W_featureLink}
    Wait For Element Visibility  ${KU_W_feature_setAGoalLink}
    Click Element  ${KU_W_feature_setAGoalLink}

    ${query1}  Get Json Values  $.Questionnaire..g4q1  Resources/TestData/Questionnaire.json 
    ${query2}  Get Json Values  $.Questionnaire..g4q2  Resources/TestData/Questionnaire.json 
    ${query3}  Get Json Values  $.Questionnaire..g4q3  Resources/TestData/Questionnaire.json 
    ${query4}  Get Json Values  $.Questionnaire..g4q4  Resources/TestData/Questionnaire.json 
    ${query5}  Get Json Values  $.Questionnaire..g4q5  Resources/TestData/Questionnaire.json 

    Wait For Element Visibility  ${KU_W_feature_sg_retireEasy}
    Click Element  ${KU_W_feature_sg_retireEasy}

    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userName}  ${query1}  ${KU_W_feature_sg_userNameTxt}  ${e_feature_sg_userName}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q_userAge}  ${query2}  ${KU_W_feature_sg_userAgeTxt}  ${e_feature_sg4_userAge}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q3}  ${query3}  ${KU_W_feature_sg_monthlyExpenseTxt}  ${e_feature_sg4_montlyExpense}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q4}  ${query4}  ${KU_W_feature_sg_retireAgeTxt}  ${e_feature_sg4_retireAge}
    Verify Question And Enter Input  ${KU_W_feature_sg_Q5}  ${query5}  ${KU_W_feature_sg_investUpfrontTxt}  ${e_feature_sg4_investUpfront}
    Verify Recommendation And Navigation    