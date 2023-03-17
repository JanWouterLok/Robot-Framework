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

Bestellen
    Click Element  css:a[href='https://webshop.mobiletestautomation.nl/order']

Adresgegevens invullen
    Input Text  css:input[name=address1]  Straat
    Input Text  css:input[name=address2]  21
    Input Text  css:input[name=postcode]  1111 AA
    Input Text  css:input[name=city]  Steenwijk

Adresgegevens bevestigen
    Click Button  css:button[name=confirm-addresses]

Order plaatsen en bevestiging dat order echt geplaatst is
    Click Button  css:button[name=confirmDeliveryOption]
    Click Element  css:input[id=payment-option-2]
    Click Element  css:input[id='conditions_to_approve[terms-and-conditions]']
    Click Button  Place order
    Element Should Contain  css:h3[class='h1 card-title']  YOUR ORDER IS CONFIRMED

Opdracht 3
    Navigate to HomePage
    Klik op link All products
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/7-home_default/mug-the-adventure-begins.jpg']
    Product toevoegen aan winkelwagen    
    Navigate to homepage via BreadcrumbList
    Klik op link All products
    Klik op link All products pagina 2
    Wait Until Element Is Visible  css:img[src='https://webshop.mobiletestautomation.nl/17-home_default/hummingbird-vector-graphics.jpg']
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/17-home_default/hummingbird-vector-graphics.jpg']
    Product toevoegen aan winkelwagen    
    Navigate to homepage via BreadcrumbList
    Klik op link All products
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/11-home_default/brown-bear-cushion.jpg']
    Product toevoegen aan winkelwagen    
    Navigate to homepage via BreadcrumbList
    Klik op link All products
    Klik op link All products pagina 2
    Wait Until Element Is Visible  css:img[src='https://webshop.mobiletestautomation.nl/18-home_default/mountain-fox-notebook.jpg']
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/18-home_default/mountain-fox-notebook.jpg']
    Product toevoegen aan winkelwagen    
    Navigate to homepage via BreadcrumbList
    Klik op link All products
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/5-home_default/today-is-a-good-day-framed-poster.jpg']
    Product toevoegen aan winkelwagen en afrekenen
    Element Text Should Be  css:span[class=cart-products-count]  (5)