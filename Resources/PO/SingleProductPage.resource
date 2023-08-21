*** Settings ***
Library             SeleniumLibrary

Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/SingleProductPageLocators.resource
*** Keywords ***

Select "Size M" dropdown
    Click Element    ${SINGLE_PRODUCT_PAGE_SIZE_DROPDOWN}

Click "Add to cart" button

Select "Dimensions" "40 x 60cm"

Select "Size L" dropdown

Select "Dimensions" "60 x 90cm"