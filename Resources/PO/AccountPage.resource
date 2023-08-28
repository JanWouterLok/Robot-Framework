*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/TestCasesVariables.resource
Resource          ../Locators/AccountPageLocators.resource

*** Keywords ***

Verify Account Page Loaded
    Wait Until Page Contains Element        ${ACCOUNT_PAGE_HEADER}
    Page Should Contain Element             ${ACCOUNT_PAGE_HEADER}

Click "Create New Address" Element
    Click Element                           ${ACCOUNT_PAGE_CREATE_NEW_ADDRESS_ELEMENT}

Click "Addresses" Element
	Click Element                           ${ACCOUNT_PAGE_ADDRESSES_ELEMENT}
```