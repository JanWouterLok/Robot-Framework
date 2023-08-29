*** Settings ***
Library           SeleniumLibrary
Resource            ../Locators/OrderModalLocators.resource

*** Keywords ***

Verify order modal is displayed
    Wait Until Element Is Visible       ${ORDER_MODAL_BODY}             timeout=10s
    Wait Until Page Contains Element    ${ORDER_MODAL_HEADER}           timeout=10s

Click "Continue shopping" button
    Click Element                       ${ORDER_MODAL_CONTINUE_SHOPPING_BUTTON}


Click "Proceed to checkout" button
    Click Element                       ${ORDER_MODAL_CHECKOUT_BUTTON}
