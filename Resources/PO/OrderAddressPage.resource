*** Settings ***
Library             SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/AccountAddressPageLocators.resource

*** Keywords ***

Verify Address page loaded
    Wait Until Page Contains Element        ${ACCOUNT_ADDRESS_PAGE_HEADER}
    Page Should Contain Element             ${ACCOUNT_ADDRESS_PAGE_HEADER}

Click "Create new address" Link
	Click Element                           ${ACCOUNT_ADDRESS_PAGE_CREATE_NEW_ADDRESS_LINK}