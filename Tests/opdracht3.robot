*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/loginKeywords.robot
Resource    ../Resources/Variables/loginVariable.robot
Library     String
Test Setup  Navigate to HomePage
Test Teardown  Exit Browser

*** Test Cases ***
Plaats 5 producten in de winkelwagen
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
    #Exit Browser