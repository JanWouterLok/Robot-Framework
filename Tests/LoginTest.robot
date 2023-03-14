*** Settings ***
Library     SeleniumLibrary



*** Variables ***
${url}    https://webshop.mobiletestautomation.nl/
${browser}    chrome



*** Keywords ***
LaunceBrowser
    Open Browser   ${url}      ${browser}
    Maximize Browser Window




*** Test Cases ***
PositiefLoginTest
    LaunceBrowser   





