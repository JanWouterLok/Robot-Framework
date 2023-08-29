*** Settings ***
Resource    ../Resources/Keywords/homePageKeywords.robot

Test Setup      Navigate to Website
Test Teardown   Exit Browser

*** Test Cases ***
Search mug and verify items found
    [Documentation]     As a customer, I want to be able to search for a product so that I can find all relevant items
    [Tags]
    Confirm search results for mug

Search sweater and verify items found
    [Documentation]     As a customer, I want to be able to search for a product so that I can find all relevant items
    [Tags]
    Confirm search results for sweater
