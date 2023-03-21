*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/loginKeywords.robot
Resource    ../Resources/Variables/loginVariable.robot
Test Setup  Navigate to HomePage
Test Teardown  Exit Browser

*** Test Cases ***
Zoek product op en bevestig dat product in resultaat zit
    Log in
    Input Text  css:input[name=s]  fox
    Press Keys  css:input[name=s]  RETURN
    Page Should Contain Image  css:img[src='https://webshop.mobiletestautomation.nl/9-home_default/mountain-fox-cushion.jpg']
    Page Should Contain Image  css:img[src='https://webshop.mobiletestautomation.nl/15-home_default/mountain-fox-vector-graphics.jpg']
    Page Should Contain Image  css:img[src='https://webshop.mobiletestautomation.nl/18-home_default/mountain-fox-notebook.jpg']
    Page Should Not Contain Image  css:img[src='https://webshop.mobiletestautomation.nl/25-home_default/orange.jpg']
    Log out