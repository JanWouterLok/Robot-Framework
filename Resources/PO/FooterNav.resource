*** Settings ***
Library             SeleniumLibrary
Resource            ../Locators/FooterNavLocators.resource

*** Keywords ***

Click on "YOUR ACCOUNT" Link
    Click Link          ${FOOTER_NAV_YOUR_ACCOUNT_LINK}