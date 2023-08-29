*** Settings ***
Library    SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/OrderSummaryPageLocators.resource

*** Keywords ***

Verify Order Summary page loaded

	Wait Until Page Contains Element    ${ORDER_SUMMARY_PAGE_HEADER}
    Page Should Contain Element         ${ORDER_SUMMARY_PAGE_HEADER}

Verify Order Summary page "YOUR ORDER IS CONFIRMED" message is displayed

	Wait Until Page Contains Element    ${ORDER_SUMMARY_PAGE_ORDER_CONFIRMED_HEADER}
    Page Should Contain Element         ${ORDER_SUMMARY_PAGE_ORDER_CONFIRMED_HEADER}




