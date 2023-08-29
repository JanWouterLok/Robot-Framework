*** Settings ***
Library           SeleniumLibrary
Resource          ../Locators/AccountPageLocators.resource

*** Keywords ***

Verify Account Page Loaded
    Wait Until Page Contains Element        ${ACCOUNT_PAGE_HEADER}
    Page Should Contain Element             ${ACCOUNT_PAGE_HEADER}

Click "Addresses" Element
	Click Element                           ${ACCOUNT_PAGE_ADDRESSES_ELEMENT}
```