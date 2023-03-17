*** Settings ***
Library     SeleniumLibrary
Resource    C:/Robot-Framework/Resources/Keywords/loginKeywords.robot
Resource    C:/Robot-Framework/Resources/Variables/loginVariable.robot
Library     String

*** Test Cases ***
Order plaatsen en versturen naar je eigen adres
    Navigate to HomePage
    Maak een nieuw account aan en bevestig dat gebruiker ingelogd is
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/8-home_default/mug-today-is-a-good-day.jpg']
    Product toevoegen aan winkelwagen en afrekenen
    Bestellen
    Adresgegevens invullen
    Adresgegevens bevestigen
    Order plaatsen en bevestiging dat order echt geplaatst is
    Log out
    Exit Browser