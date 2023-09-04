*** Settings ***
Resource    homePageKeywords.resource

*** Keywords ***
Select first address in saved address
    Click Element    ${firstAddressCheckout}
    Click Element    ${continueAfterChoosingAddress}
    
Select second address in saved address
    Click Element    ${secondAddressCheckout}
    Click Element    ${continueAfterChoosingAddress}

Select pick-up in store as shipping method
    Click Element    ${pickUpShippingMethod}
    Click Element    ${continueAfterShippingMethod}

Select my carrier as shipping method
    Click Element    ${myCarierShippingMethod}
    Click Element    ${continueAfterShippingMethod}

Pay by check
    Click Element    ${payByCheckRadioButton}
    Click Element    ${agreeToTerms}
    Click Element    ${placeOrderButton}

Pay by bank wire
    Click Element    ${payByBankWireRadioButton}
    Click Element    ${agreeToTerms}
    Click Element    ${placeOrderButton}

Check out with pick-up in store and pay by check
    Proceed to checkout
    Go to Checkout
    Select first address in saved address
    Select pick-up in store as shipping method
    Pay by check
    Element Should Contain    ${paymentTotal}    €149.99
    Element Should Contain    ${orderConfirmed}    YOUR ORDER IS CONFIRMED