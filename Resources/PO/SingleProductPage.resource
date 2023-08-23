*** Settings ***
Library             SeleniumLibrary

Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/SingleProductPageLocators.resource
Resource            ../Locators/OrderModalLocators.resource
*** Keywords ***

Select "Size M" dropdown
    Click Element                           ${SINGLE_PRODUCT_PAGE_SIZE_DROPDOWN}
    Select From List By Label               ${SINGLE_PRODUCT_PAGE_SIZE_DROPDOWN}            ${SINGLE_PRODUCT_PAGE_SIZE_DROPDOWN_OPTION_MEDIUM}

Click "Add to cart" button

    Click Button                            ${SINGLE_PRODUCT_PAGE_ADD_TO_CART_BUTTON}


Select "Dimensions" "40 x 60cm"

    Select From List By Label               ${SINGLE_PRODUCT_PAGE_DIMENSIONS_DROPDOWN}      ${SINGLE_PRODUCT_PAGE_DIMENSIONS_DROPDOWN_OPTION_40x60}

Select "Size L" dropdown

    Select From List By Label               ${SINGLE_PRODUCT_PAGE_SIZE_DROPDOWN}            ${SINGLE_PRODUCT_PAGE_SIZE_DROPDOWN_OPTION_LARGE}

Select "Dimensions" "60 x 90cm"

    Select From List By Label               ${SINGLE_PRODUCT_PAGE_DIMENSIONS_DROPDOWN}      ${SINGLE_PRODUCT_PAGE_DIMENSIONS_DROPDOWN_OPTION_60x90}

Click "Home" Link

    Click Element                           ${SINGLE_PRODUCT_PAGE_HOME_LINK}




