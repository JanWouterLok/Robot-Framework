*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/HomePageKeywords.robot
Resource    ../Resources/Keywords/HomePageVariables.robot
Resource    ../Resources/Keywords/LoginPageKeywords.robot
Resource    ../Resources/Variables/LoginPageVariables.robot
Resource    ../Resources/Keywords/ProductsPageKeywords.robot
Resource    ../Resources/Keywords/RegisterPageKeywords.robot
Resource    ../Resources/Keywords/RegisterPageVariables.robot
Library     Collections



*** Test Cases ***
Open a new Account
    Navigate to HomePage
    Open a new account
    ${user} =  Get Text    xpath=//*[@class='account']
    Log To Console              ${user}
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
   
    
    
    #items List
    FOR    ${index}    IN RANGE    1    5    
        ${items}=  Get Text    xpath=(//*[@class='col-sm-4 col-xs-9 details'])[${index}]
        #@{itemList}=  Create List   ${items}   
        Log To Console  ${items}
    END
    
   
    #sub total validation
    ${sub_Total}=   Get Text    xpath=//table/tbody/tr[1]/td[2]
    Log To Console         ${sub_Total}  
    Should Be Equal        ${sub_Total}    €81.68 
    
    
    
    #Exit Browser
              



    



AdresAdditionTest
    Navigate to HomePage
    Log in                doejohn@test.nl            Test1234!
    Adres Addition
    



NewTest

    Navigate to HomePage
    Log in               ${Username}          ${Password}
    Add a Brown Bear Cushion
    Add a Humminbird Notebook
    Add a Mug the Adventure Begins
    Exit Browser
    
    

