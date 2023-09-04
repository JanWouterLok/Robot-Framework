*** Settings ***
Library                         SeleniumLibrary
Resource                        ../Locators/SearchResultsPageLocators.resource

*** Keywords ***

Verify "Search results" page loaded
    Wait Until Page Contains Element    ${SEARCH_RESULTS_PAGE_HEADER}
    Page Should Contain Element         ${SEARCH_RESULTS_PAGE_HEADER}

Verify "Hummingbird t-shirt" product is found

    Page Should Contain Element         ${SEARCH_RESULTS_PAGE_HUMMINGBIRD_TSHIRT_PRODUCT}
    Page Should Contain Element         ${SEARCH_RESULTS_PAGE_HUMMINGBIRD_TSHIRT_PRICE}
    Page Should Contain Element         ${SEARCH_RESULTS_PAGE_HUMMINGBIRD_TSHIRT_IMAGE}
