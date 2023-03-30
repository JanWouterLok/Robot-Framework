*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Variables/LoginVariables.robot
Resource          ../Resources/Variables/RegisterVariables.robot
Resource          ../Resources/Keywords/ProductsKeywords.robot
Resource          ../Resources/Keywords/RegisterKeywords.robot
Library           String
Library           Collections
Test Setup        Navigate to HomePage

#Test Teardown     Exit Browser


*** Test Cases ***
Open a new Account
    Navigate to HomePage
    Open a new account
    # ${user} =  Get Text    xpath=//*[@class='account']
    # Log To Console              ${user}
    Element Text Should Be      xpath=//*[@class='account']      John Doe
    Element Should Be Visible   xpath=//*[@id="_desktop_user_info"]/div/a[1]



Voeg 5 producten toe
    Navigate to HomePage
    #Log in                ${Username}          ${Password}
    Open a new account
    sleep                 3
    Adres Addition
    sleep                 3
    Navigate to WebShop Page
    Execute Javascript    window.scrollTo(0,500)
    Click Link            xpath=//*[@id="content"]/section/div/div[6]/article/div/a
    sleep                 2
    To Click Quantity
    Add to Element to Cart
    Add a Brown Bear Cushion
    Add a Mug the Adventure Begins
    Add a Humminbird Notebook
    Order Plaatsen en Versturen
    Verify de Order
     
    
    # #items List
    # @{productItems}=  Get WebElements   xpath=//*[@class='col-sm-4 col-xs-9 details']

    # FOR    ${index}    IN  @{productItems}  
    #     Log To Console    ${index}
    #     ${items}=  Get Text    ${index}
    #     Append To List  @{productItems}     ${items}
    #     #@{itemList}=  Create List   ${items}   
    #     Log To Console  @{productItems}

    # END

    @{elementList}=  Get WebElements  xpath=//*[@class='col-sm-4 col-xs-9 details']
    @{textList}=    Create List
    FOR  ${element}  IN  @{elementList}
         ${text}=  Get Text  ${element}
         Append To List  ${textList}  ${text}
         Log To Console  ${text} 
           
    END
    Log   ${textList}
    Log To Console  ${textList}
    Log List  ${textList}  
    

    #sub total validation
    ${sub_Total}=   Get Text    xpath=//table/tbody/tr[1]/td[2]
    Log To Console         ${sub_Total}  
    Should Be Equal        ${sub_Total}    €81.68 
    
    #Exit Browser
              




AdresAdditionTest
    Navigate to HomePage
    Log in                doejohn@test.nl            Test1234!
    Adres Addition
    
