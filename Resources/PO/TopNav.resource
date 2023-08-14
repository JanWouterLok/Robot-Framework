*** Settings ***
Library             SeleniumLibrary
Resource            /Resources/Locators/TopNavLocators.resource

*** Keywords ***


Click Sign In Link

    Click Link      ${TOP_NAV_SIGN_IN_LINK}