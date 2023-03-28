*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../Resources/Keywords/homePageKeywords.robot
Resource    ../Resources/Keywords/registerKeywords.robot
Resource    ../Resources/Keywords/ordersKeywords.robot
Resource    ../Resources/Variables/homePageVariable.robot
Test Setup  Navigate to HomePage
Test Teardown   Exit Browser

*** Test Cases ***
New order
    Search product
    Add product in cart

Order plaatsen en versturen naar je eigen adres
    Maak een nieuw account aan en bevestig dat gebruiker ingelogd is
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/8-home_default/mug-today-is-a-good-day.jpg']
    Product toevoegen aan winkelwagen en afrekenen
    Bestellen
    Adresgegevens invullen
    Adresgegevens bevestigen
    Order plaatsen en bevestiging dat order echt geplaatst is
    Log out

PLace an order with multiple products
    Plaats 5 producten in de winkelwagen