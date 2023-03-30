*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/LoginKeywords.robot
Resource    ../Resources/Variables/LoginVariables.robot


*** Test Cases ***
PositiefLoginTest
    Navigate to HomePage 
    Log in                     ${Username}             ${Password}
    Element Text Should Be      xpath=//*[@class='account']      Dan Tester
    ${user} =  Get Text    xpath=//*[@class='account']
    Log To Console              ${user}
    Exit Browser
    

NegatiefLoginTest1
    Navigate to HomePage
    Log in                     ${onjuisteUserName}    ${Password}
    Element Text ShouLd Be     css=div.help-block     Authentication failed.
    Exit Browser


NegatiefLoginTest2
    Navigate to HomePage
    Log in                     ${Username}            ${onjuistePassword} 
    Element Text ShouLd Be     css=div.help-block     Authentication failed.
    Exit Browser
      
NegatiefLoginTest3
    Navigate to HomePage
    Log in                     ${onjuisteUserName}    ${onjuistePassword} 
    Element Text ShouLd Be     css=div.help-block     Authentication failed.
    Exit Browser

    





