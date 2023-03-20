*** Settings ***
Library     SeleniumLibrary
Resource    C:/Robot-Framework/Resources/Keywords/loginKeywords.robot
Resource    C:/Robot-Framework/Resources/Variables/loginVariable.robot

*** Test Cases ***
Zoek product op en bevestig dat product in resultaat zit
    Navigate to HomePage
    Log in
    Input Text  css:input[name=s]  fox
    Press Keys  css:input[name=s]  RETURN
    @{productNames} =  Get WebElements  css:.product-title
    FOR  ${element}  IN  @{productNames}
    ${text}=  Get Text  ${element}  #Deze regel is niet nodig, maar toont wel de hele omschrijving in de log
    Element Should Contain  ${element}  Fox
    END    
    Log out
    Exit Browser