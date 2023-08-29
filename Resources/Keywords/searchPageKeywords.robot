*** Settings ***
Resource    homePageKeywords.robot

*** Keywords ***
Confirm search results for a product
    [Arguments]     ${searchProduct}
    Search product    ${searchProduct}
    ${results}      Get WebElements    class=thumbnail-container
    FOR    ${result}    IN    @{results}
        ${text}      SeleniumLibrary.Get Text    ${result}
        Should Contain    ${text}    ${searchProduct}
    END

Confirm search results for mug
    Confirm search results for a product    Mug

Confirm search results for sweater
    Confirm search results for a product    Sweater