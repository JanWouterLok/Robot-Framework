*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/TestCasesVariables.resource
Resource          ../Locators/AccountPageLocators.resource

*** Keywords ***

Verify Account Page Loaded
    Wait Until Page Contains Element        ${ACCOUNT_PAGE_HEADER}
    Page Should Contain Element             ${ACCOUNT_PAGE_HEADER}

Click "Addresses" Link
	Click Link                              ${ACCOUNT_PAGE_ADDRESSES_LINK}
```