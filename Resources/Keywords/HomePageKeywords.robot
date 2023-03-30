*** Settings ***
Library      SeleniumLibrary
Library      String






*** Keywords ***
Navigate to HomePage
    Open Browser       ${url}       ${browser}
    Maximize Browser Window

Exit Browser
    Close Browser
