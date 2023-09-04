*** Settings ***
Resource    homePageKeywords.resource

*** Keywords ***
Add Product to Cart
    Click Element    ${addToCart}

Continue Shopping
    Wait Until Element Is Visible    ${continueShopping}
    Click Element    ${continueShopping}

Proceed to checkout
    Wait Until Element Is Visible    ${proceedToCheckout}
    Click Element    ${proceedToCheckout}

Add quatity
    [Arguments]     ${quantity}
    Input Text    ${quantityInputField}    ${quantity}

Change Dimensions
    [Arguments]     ${dimensions}
    Select From List By Value    ${dimensionsDropDown}  ${dimensions}

Confirm product was added to cart
    Wait Until Element Is Visible    ${confirmAddedToCart}
    Element Should Contain    ${confirmAddedToCart}    Product successfully added to your shopping cart

Confirm five product in cart
    Wait Until Element Is Visible    ${confirmAmountInCart}
    Element Should Contain    ${confirmAmountInCart}    There are 5 items in your cart.

Add five products to cart
    Navigate to Homepage
    Click Element   ${thirdItem}
    Add Product to Cart
    Continue Shopping
    Navigate to Homepage
    Click Element   ${secondItem}
    Add Product to Cart
    Continue Shopping
    Navigate to Homepage
    Click Element   ${eighthItem}
    Add Product to Cart
    Continue Shopping
    Navigate to Homepage
    Click Element   ${fourthItem}
    Add Product to Cart
    Continue Shopping
    Navigate to Homepage
    Click Element   ${seventhItem}
    Add Product to Cart
    Continue Shopping
    Confirm five product in cart

Add five products with different quantities and dimensions
    Navigate to Homepage
    Click Element   ${secondItem}
    Add quatity    3
    Change Dimensions    3
    Add Product to Cart
    Confirm product was added to cart
    Continue Shopping
    Navigate to accesories
    Click Element   ${fifthItemAccPage}
    Add quatity    2
    Add Product to Cart
    Confirm product was added to cart
    Confirm five product in cart

