*** Variables ***
# Application Expected Values 'e_<VariableName>'
${e_blogLink} =  Blog
${e_blog_kuveraWeeklyTitle} =  KUVERA WEEKLY
${e_blog_kuverianStories} =  Happy Kuverians’ Stories            

# Application Expected Values 'e_<VariableName>'
${KU_A_blog_allBlogLink} =  xpath=//*[@text='All']
${KU_A_blog_popularBlogLink} =  xpath=//*[@text='Popular']
${KU_A_blog_allCategoriesLink} =  xpath=//*[@text='Categories']
${KU_A_blog_closeButton} =  xpath=//*[@content-desc='Close tab']
${KU_A_blog_blogLink} =  xpath=//*[@text='Blog']
${KU_A_blog_kuveianStoriesTitle} =  xpath=//*[@css='H2.bold-black-title']