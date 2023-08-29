*** Settings ***
Library             SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/ClothesProductsPageLocators.resource

*** Keywords ***

Verify "Clothes" Products Page Loaded

	Wait Until Page Contains Element    ${CLOTHES_PRODUCTS_PAGE_HEADER}
    Page Should Contain Element         ${CLOTHES_PRODUCTS_PAGE_HEADER}

Click "Hummingbird Printed T-shirt" Picture

	Click Element                       ${CLOTHES_PRODUCTS_PAGE_TSHIRT_PICTURE}