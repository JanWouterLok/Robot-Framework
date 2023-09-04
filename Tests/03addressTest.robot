*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/homePageKeywords.resource

Test Setup      Navigate to Website
Test Teardown   Exit Browser

*** Test Cases ***
Save first address
    [Documentation]     As a registered customer, I want to be able to save my first address so that I can use it as shipping/billing address
    [Tags]
    Log in with correct login
    Navigate to user address page
    Add first address

Save another address
    [Documentation]     As a registered customer, I want to be able to save an additional address so that I can use it as shipping/billing address
    [Tags]
    Log in with correct login
    Navigate to user address page
    Add new address