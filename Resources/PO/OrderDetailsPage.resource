*** Settings ***
Library                 SeleniumLibrary
Resource                ../Variables/TestCasesVariables.resource
Resource                ../Locators/OrderDetailsPageLocators.resource

*** Keywords ***
Verify "Order Details" page loaded
    Wait Until Page Contains Element        ${ORDER_DETAILS_PAGE_HEADER}
    Page Should Contain Element             ${ORDER_DETAILS_PAGE_HEADER}

Select Product "Mountain fox cushion" from Dropdown
	    Select From List By Label           ${ORDER_DETAILS_PAGE_PRODUCT_DROPDOWN}              ${MOUNTAIN_FOX_CUSHION_ORDER}

Enter Message "What does the fox say?" in Textarea

	Input Text                              ${ORDER_DETAILS_PAGE_MESSAGE_FIELD}                 ${MOUNTAIN_FOX_CUSHION_MESSAGE}


```