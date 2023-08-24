*** Settings ***
Library             SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/AccountAddressPageLocators.resource
*** Keywords ***

Verify Account Address Page Loaded
	 Wait Until Page Contains Element           ${ACCOUNT_ADDRESS_PAGE_HEADER}
	 Page Should Contain Element                ${ACCOUNT_ADDRESS_PAGE_HEADER}

Click "Create new address" Link
	 Click Link                                 ${ACCOUNT_ADDRESS_PAGE_CREATE_NEW_ADDRESS_LINK}

Click "Update" Link
     Click Link                                 ${ACCOUNT_ADDRESS_PAGE_UPDATE_ADDRESS_LINK}

Click "Delete" Link
	 Click Link                                 ${ACCOUNT_ADDRESS_PAGE_DELETE_ADDRESS_LINK}

Verify new "My address" section is displayed
     Wait Until Page Contains Element           ${ACCOUNT_ADDRESS_PAGE_MY_ADDRESS_SECTION}
     Page Should Contain Element                ${ACCOUNT_ADDRESS_PAGE_MY_ADDRESS_SECTION}

Verify "Address succesfully added!" message is displayed
     Wait Until Page Contains                   ${ACCOUNT_PAGE_ADDRESS_ADDED_MESSAGE}
     Page Should Contain                        ${ACCOUNT_PAGE_ADDRESS_ADDED_MESSAGE}