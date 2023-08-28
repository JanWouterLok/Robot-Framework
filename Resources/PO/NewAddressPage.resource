*** Settings ***
Library             SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/NewAddressPageLocators.resource

*** Keywords ***

Verify New Address Page Loaded
	Wait Until Page Contains            ${NEW_ADDRESS_PAGE_HEADER}
	Page Should Contain                 ${NEW_ADDRESS_PAGE_HEADER}

Enter "Address"

	Input Text                          ${NEW_ADDRESS_PAGE_ADDRESS_BOX}         ${ADDRESS_CREATE_NEW_ADDRESS}

Enter "Zip/postal code"

    Input Text                          ${NEW_ADDRESS_PAGE_POSTAL_CODE_BOX}     ${POSTAL_CODE_CREATE_NEW_ADDRESS}

Enter "City"

    Input Text                          ${NEW_ADDRESS_PAGE_CITY_BOX}            ${CITY_CREATE_NEW_ADDRESS}

Select "Country" "Netherlands"

    Select From List By Label           ${NEW_ADDRESS_PAGE_COUNTRY_DROPDOWN}    ${COUNTRY_NETHERLANDS_CREATE_NEW_ADDRESS}

Select "Country" "France"

    Select From List By Label           ${NEW_ADDRESS_PAGE_COUNTRY_DROPDOWN}    ${COUNTRY_FRANCE_CREATE_NEW_ADDRESS}

Click "Save" button

    Run Keyword And Ignore Error        NewAddressPage.Click "Save" Button Action
    Run Keyword And Ignore Error        NewAddressPage.Click "Save" Button Again Action

Click "Save" Button Action

	Click Element                       ${NEW_ADDRESS_PAGE_SAVE_BUTTON}

Click "Save" Button Again Action

    Click Element                       ${NEW_ADDRESS_PAGE_SAVE_BUTTON}