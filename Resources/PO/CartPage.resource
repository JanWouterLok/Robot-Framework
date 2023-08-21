*** Settings ***
Library           SeleniumLibrary
Library             SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/CartPageLocators.resource
*** Keywords ***

Verify Cart page loaded

Verify products in cart

Click "Proceed to checkout" button