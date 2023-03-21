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
    @{productNames} =  Get WebElements  css:.product-title
    FOR  ${element}  IN  @{productNames}
    ${text}=  Get Text  ${element}  #Deze regel is niet nodig, maar toont wel de hele omschrijving in de log
    Log To Console  ${text}
    Element Should Contain  ${element}  Fox
    END    
    Log out