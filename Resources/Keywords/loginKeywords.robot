*** Keywords ***
Navigate to HomePage
    Open Browser   ${url}      ${browser}
    Maximize Browser Window

Exit Browser
    Close Browser

Log out
    Click Link  css:a[class='logout hidden-sm-down']

Log in
    Click Link         css:a[title='Log in to your customer account']
    Input text         name=email    ${username} 
    Input Password     name=password              ${Password}
    Click Button       id:submit-login
    
Bevestig dat gebruiker ingelogd is
    Page Should Contain  Sign out

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

Product toevoegen aan winkelwagen
    Click Button  css:button[data-button-action=add-to-cart]
    Wait Until Element Is Visible  css:div[class=cart-content-btn] button
    Click Button  css:div[class=cart-content-btn] button
    Wait Until Element Is Not Visible  css:div[class=cart-content-btn] button

Product toevoegen aan winkelwagen en afrekenen
    Click Button  css:button[data-button-action=add-to-cart]
    Wait Until Element Is Visible  css:div[class=cart-content-btn] a
    Click Element  css:div[class=cart-content-btn] a
    Wait Until Element Is Not Visible  css:div[class=cart-content-btn] a

Klik op link All products
    Click Link  css:a[href='https://webshop.mobiletestautomation.nl/2-home']

Navigate to homepage via BreadcrumbList
    Click Element  css:ol[itemtype='http://schema.org/BreadcrumbList'] span

Klik op link All products pagina 2
    Click Link  css:a[rel=nofollow][href='https://webshop.mobiletestautomation.nl/2-home?page=2']