*** Settings ***
Library      SeleniumLibrary
Library      String
Resource    ../Resources/Keywords/HomePageVariables.robot
Resource    ../Resources/Keywords/LoginPageVariables.robot
Resource    ../Resources/Keywords/RegisterPageVariables.robot


*** Variables ***
${firstname}         John  
${lastname}          Doe



*** Keywords ***
Open a new account
    Click Link                 xpath=//*[@id="_desktop_user_info"]/div/a
    sleep   3
    Click Link                 xpath=//*[@id="content"]/div/a
    Select Radio Button        id_gender                                1
    Input Text                 css=input[name=firstname]               ${firstname}
    Input Text                 css=input[name=lastname]                ${lastname}
    ${randomEmail} =  Generate Random String  8-12  [LETTERS][NUMBERS]
    Input Text                 css=input[class=form-control][name=email]                      ${randomEmail}@test.nl
    Input Text                 css=input[name=password]                                             Test1234!
    Input Text                 css=input[name=birthday]                                             05/05/2000
    Click Button               xpath=//*[@id="customer-form"]/footer/button
    Wait Until Element Contains   class=account   ${firstname} ${lastname}



Verify new Account
    ${user} =    Get Text       xpath=//*[@class='account']
    Log To Console              ${user}
    Element Text Should Be      xpath=//*[@class='account']      John Doe
    Element Should Be Visible   xpath=//*[@id="_desktop_user_info"]/div/a[1]

