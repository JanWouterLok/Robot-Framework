*** Settings ***
Library             SeleniumLibrary
Resource            ../Variables/TestCasesVariables.resource
Resource            ../Locators/CartPageLocators.resource
*** Keywords ***

Verify Cart page loaded
    Wait Until Page Contains Element    ${CART_PAGE_HEADER}
    Page Should Contain Element         ${CART_PAGE_HEADER}

Verify products in cart

    FOR   ${item}       IN              @{SHOPPING_CART_ITEMS}

    Page Should Contain                 ${item}

    END

Remove items from cart

    FOR   ${item}       IN              @{SHOPPING_CART_ITEMS}

    Click Element                       ${CART_PAGE_TRASH_ICON}

    END

Click "Proceed to checkout" button