*** Settings ***
Library             SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/AccountAddressPageLocators.resource

*** Keywords ***

Verify Account Address Page Loaded
    Wait Until Page Contains Element                ${ACCOUNT_ADDRESS_PAGE_HEADER}
    Page Should Contain Element                     ${ACCOUNT_ADDRESS_PAGE_HEADER}

Click "Create new address" Element
	Click Element                                   ${ACCOUNT_ADDRESS_PAGE_CREATE_NEW_ADDRESS_ELEMENT}

Click "Update" Link
    Click Link                                      ${ACCOUNT_ADDRESS_PAGE_UPDATE_ADDRESS_LINK}

Click "Delete" Link
	Click Link                                      ${ACCOUNT_ADDRESS_PAGE_DELETE_ADDRESS_LINK}

Click "Home" Element
    Click Element                                   ${ACCOUNT_ADDRESS_PAGE_HOME_ELEMENT}

Verify new "My address" section is displayed
    Wait Until Page Contains Element                ${ACCOUNT_ADDRESS_PAGE_MY_ADDRESS_SECTION}
    Page Should Contain Element                     ${ACCOUNT_ADDRESS_PAGE_MY_ADDRESS_SECTION}

Verify "Address succesfully added!" message is displayed
    Wait Until Page Contains Element                ${ACCOUNT_PAGE_ADDRESS_ADDED_MESSAGE}
    Page Should Contain Element                     ${ACCOUNT_PAGE_ADDRESS_ADDED_MESSAGE}

Verify address added to existing user
    FOR   ${item}       IN                          @{ADDRESS_INFORMATION_LIST}

    Page Should Contain                             ${item}

    END

Delete address from existing user
    FOR     ${item}       IN                        @{ADDRESS_INFORMATION_LIST}

    Click Element                                   ${ACCOUNT_ADDRESS_PAGE_DELETE_ADDRESS_LINK}

    END



