*** Keywords ***


Log in
    Click Link         css:a[title='Log in to your customer account']
    Input text         name=email    ${username} 
    Input Password     name=password              ${Password}
    Click Button       id:submit-login
    
Bevestig dat gebruiker ingelogd is
    Page Should Contain  Sign out





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