*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/Common.resource
Resource            ../Resources/ValoriWebShop.resource
Test Setup          Start web test
Test Teardown       Close all browsers

*** Test Cases ***

Feature: Login to the webshop
    [Documentation]    Scenario: Login to the webshop
    [Tags]  BDD_001    Smoke            Login      BDD
    Given ValoriWebShop.I am on the webshop homepage
    When ValoriWebShop.I login with valid credentials
    Then ValoriWebShop.I should see my account page

Feature: Search for a product
    [Documentation]     Scenario: Search for a product
    [Tags]  BDD_002     Functional      Search      BDD
    Given ValoriWebShop.I am on the webshop homepage
    When ValoriWebShop.I search for "Hummingbird t-shirt"
    Then ValoriWebShop.I should see search results for "Hummingbird t-shirt"





