*** Settings ***
Library             SeleniumLibrary

Resource            /Resources/Variables/TestCasesVariables.resource
Resource            /Resources/Locators/SignInPageLocators.resource

*** Keywords ***

Verify Sign In Page Loaded

Enter Valid email

Enter Valid password

enter invalid email

enter invalid password

click sign in

Verify error message displayed