*** Keywords ***
Create account
    Click Link         xpath=//*[@id="_desktop_user_info"]/div/a
    Click Link         No account? Create one here
    Select Radio Button  id_gender  1
    Input Text  name=firstname  ${firstname}
    Input Text  name=lastname  ${lastname}
    ${randomEmail} =  Generate Random String  8-12  [LETTERS][NUMBERS]
    Input Text  name=email  ${randomEmail}@birdmail.com
    Input Text  name=password  ${Password}
    Input Text  name=birthday  ${birthdate}
    Select Checkbox  name=optin
    Click Button  Save
    Wait Until Element Contains  class=account  ${firstname} ${lastname}
    sleep  3s

Maak een nieuw account aan en bevestig dat gebruiker ingelogd is 
    Click Link  css:a[title='Log in to your customer account']
    Click Link  css:a[data-link-action=display-register-form]
    Click Element  css:input[name=id_gender][value='1']
    Input Text  css:input[name=firstname]  Aparte
    Input Text  css:input[name=lastname]  Vogel
    ${randomEmail} =  Generate Random String  8-12  [LETTERS][NUMBERS]    
    Input Text  css:input[class=form-control][name=email]  ${randomEmail}@birdmail.com
    Input Text  css:input[name=password]  gehiem
    Input Text  css:input[name=birthday]  02/23/1975
    Click Button  css:button[data-link-action=save-customer][type=submit]
    Page Should Contain  Aparte Vogel       