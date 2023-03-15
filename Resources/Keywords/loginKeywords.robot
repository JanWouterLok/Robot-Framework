*** Keywords ***
Navigate to HomePage
    Open Browser   ${url}      ${browser}
    Maximize Browser Window

Exit Browser
    Close Browser

Log out
    Click Link  css=a[class='logout hidden-sm-down']

Log in
    Click Link         css=a[title='Log in to your customer account']
    Input text         name=email    ${username} 
    Input Password     name=password              ${Password}
    Click Button       id=submit-login
    
Bevestig dat gebruiker ingelogd is
    Page Should Contain  Sign out

Maak een nieuw account aan en bevestig dat gebruiker ingelogd is 
    Click Link  css=a[title='Log in to your customer account']
    Click Link  css=a[data-link-action=display-register-form]
    Click Element  css=input[name=id_gender][value='1']
    Input Text  css=input[name=firstname]  Aparte
    Input Text  css=input[name=lastname]  Vogel
    ${randomEmail} =  Generate Random String  12  [LETTERS][NUMBERS]
    Input Text  css=input[class=form-control][name=email]  ${randomEmail}@birdmail.com
    Input Text  css=input[name=password]  gehiem
    Input Text  css=input[name=birthday]  02/23/1975
    Click Button  css=button[data-link-action=save-customer][type=submit]
    Page Should Contain  Aparte Vogel