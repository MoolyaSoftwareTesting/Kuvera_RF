*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_invest_FD_allFDMenu} =  All FDs

# Application Locator 'KU_<locatorName>'
${KU_A_invest_FD_titleFromExplore} =  xpath=(//*[@text='FD'])[2]
${KU_A_invest_FD_imgFromExplore} =  xpath=//*[@text='fd']
${KU_A_invest_FD_lessThan1Y} =  xpath=//*[@text='< 1Y']
${KU_A_invest_FD_1YTo3Y} =  xpath=//*[@text='1 - 3Y']
${KU_A_invest_FD_greaterThan3Y} =  xpath=//*[@text='> 3Y']