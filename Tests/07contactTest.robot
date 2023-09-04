*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/homePageKeywords.resource


Test Setup      Navigate to Website
Test Teardown   Exit Browser

*** Test Cases ***
Send a message about an ordered item
    [Documentation]     As a registered customer, I want to send a message about an item in my latest order so that I can get my money back
    [Tags]
    Log in with correct login
    Make a complaint about hummingbird sweater being broken

Send a complaint about the website to customer service
    [Documentation]     As a customer, I want to send a message to customer service so that I can complain about the website
    [Tags]              NOW
    Fill in contact form with complaint about the website
