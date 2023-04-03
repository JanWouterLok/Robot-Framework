*** Settings ***
Library      SeleniumLibrary
Library      String
Resource     ../Variables/LoginPageVariables.robot
Resource     ../Variables/HomePageVariables.robot



*** Keywords ***
Log in
    Click Link         xpath=//*[@id="_desktop_user_info"]/div/a
    [Arguments]        ${username}                ${Password}
    Input Text         name=email                 ${username} 
    Input Text         name=password              ${Password}
    Click Button       id=submit-login


Enter username
    Input Text         name=email                 ${username} 

Enter password
    Input Text         name=password              ${Password}

Navigate Log in
    Click Link         xpath=//*[@id="_desktop_user_info"]/div/a
    [Arguments]        ${username}                ${Password}
    Input text         name=email                 ${username} 
    Input Password     name=password              ${Password}
    Click Button       id=submit-login

Verify Login    
    Element Text Should Be      xpath=//*[@class='account']      Dan Tester
    ${user} =  Get Text    xpath=//*[@class='account']
    Log To Console              ${user}
    sleep    3

Verify Login is failed 
    Element Text ShouLd Be     css=div.help-block     Authentication failed.




Adres Addition
    Click Element                css=a.account
    sleep                        2
    Click Link                   xpath=//*[@id="address-link"]
    sleep                        3
    Input Text                   xpath=//*[@id="content"]/div/div/form/section/div[6]/div[1]/input             Groeneveltstraat 23
    Input Text                   xpath=//*[@name='postcode']          2355 XD
    Input Text                   xpath=//*[@name='city']              Zwolle
    Select From List By Label    xpath=//*[@name='id_country']        Netherlands
    Click Button                 xpath=//*[@id="content"]/div/div/form/footer/button
    Element Text Should Be       xpath=//*[@class="alert alert-success"]        Address successfully added!
    