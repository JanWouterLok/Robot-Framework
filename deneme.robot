*** Settings ***
Library   SeleniumLibrary


# Merhaba Murat!

    #items List
    # @{productItems}=  Get WebElements   xpath=//*[@class='col-sm-4 col-xs-9 details']

    # FOR    ${index}    IN  @{productItems}  
    #     Log To Console    ${index}
    #     ${items}=  Get Text    ${index}
    #     Append To List  @{productItems}     ${items}
    #     #@{itemList}=  Create List   ${items}   
    #     Log To Console  @{productItems}

    # END

    # @{elementList}=  Get WebElements  xpath=//*[@class='col-sm-4 col-xs-9 details']
    # @{textList}=    Create List
    # FOR  ${element}  IN  @{elementList}
    #      ${text}=  Get Text  ${element}
    #      Append To List  ${textList}  ${text}
    #      Log To Console  ${text} 
           
    # END
    # Log   ${textList}
    # Log To Console  ${textList}
    # Log List  ${textList}  
    


#Hi