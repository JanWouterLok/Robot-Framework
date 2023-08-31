*** Settings ***
Library           SeleniumLibrary
Resource          ../Locators/AccountPageLocators.resource

*** Keywords ***

Verify Account Page Loaded
    Wait Until Page Contains Element        ${ACCOUNT_PAGE_HEADER}
    Page Should Contain Element             ${ACCOUNT_PAGE_HEADER}

Click "Addresses" Element

	Click Element                           ${ACCOUNT_PAGE_ADDRESSES_ELEMENT}

Click "Add First Address" Element

    Click Element                           ${ACCOUNT_PAGE_ADD_FIRST_ADDRESS_ELEMENT}

Click "Order History and Details" Element
    Click Element                           ${ACCOUNT_PAGE_ORDER_HISTORY_ELEMENT}
```