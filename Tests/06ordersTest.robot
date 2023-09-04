*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/homePageKeywords.resource


Test Setup      Navigate to Website
Test Teardown   Exit Browser

*** Test Cases ***
Add five products to cart
    [Documentation]     As a customer, I want to be able to add 5 items to my cart so that I can review/buy them later
    [Tags]
    Log in with correct login
    Add five products to cart

Place order of five product
    [Documentation]     As a customer, I want to be able to add 5 items to my cart and checkout so that I can complete an order
    [Tags]              NOW
    Log in with correct login
    Add five products with different quantities and dimensions
    Check out with pick-up in store and pay by check
