*** Keywords ***
Navigate to WebShop Page
    Click Element         id=_desktop_logo

Fruit Element Click
    Click Element         id=category-10 

Clothes Element Click
    Click Element         id=category-3 
   
Accesories Element Click
    Click Element         id=category-6

Art Element Click
    Click Element         id=category-9 

To Click Quantity
    Click Element         xpath=//*[@id="add-to-cart-or-refresh"]/div[2]/div/div[1]/div/span[3]/button[1]/i

Add To Cart 
    Click Element         xpath=//*[@class='btn btn-primary add-to-cart']

Continue Shopping
    Click Element         xpath=//*[@class='btn btn-secondary']
    
Product Successfully Added to Cart
    ${productAddTxt}=    Get Text    xpath=//*[@id="myModalLabel"]
    Element Should Be Visible    xpath=//*[@id="myModalLabel"]          Product successfully added to your shopping cart`    

Add to Element to Cart
    Add To Cart 
    sleep          2
    Product Successfully Added to Cart
    Continue Shopping 

Add a Hummingbird Printed T-Shirt
    Navigate to WebShop Page
    Clothes Element Click 
    Click Element         xpath=//*[@id="js-product-list"]/div[1]/div[1]/article/div/a/img
    Add to Element to Cart

    
Add a Mug the Adventure Begins
    Navigate to WebShop Page
    Accesories Element Click 
    Click Element         xpath=//*[@id="js-product-list"]/div[1]/div[1]/article/div/a/img
    Add to Element to Cart


Add a Brown Bear Cushion
    Navigate to WebShop Page
    Accesories Element Click 
    Execute Javascript    window.scrollTo(0,250)
    Click Element         xpath=//*[@id="js-product-list"]/div[1]/div[4]/article/div/a/img
    Add to Element to Cart
    

Add a Humminbird Notebook
    Navigate to WebShop Page
    Accesories Element Click 
    Execute Javascript    window.scrollTo(0,500)
    Click Element         xpath=//*[@id="js-product-list"]/div[1]/div[10]/article/div/a/img
    Add to Element to Cart

Order Plaatsen en Versturen
    Click Element         css=div#_desktop_cart
    Click Element         xpath=(//*[@class='text-sm-center'])[1]
    Click Button          css=button[name=confirm-addresses]
    Click Button          css=button[name=confirmDeliveryOption]
    Select Radio Button   payment-option    payment-option-1
    Select Checkbox       xpath=//*[@id="conditions_to_approve[terms-and-conditions]"]  
    Click Button          xpath=//*[@class='btn btn-primary center-block']
    ${"confirmed_txt"}    Set Variable    xpath=//*[@id="content-hook_order_confirmation"]/div/div/div/h3
    Log To Console        ${"confirmed_txt"} 
    Element Should Contain      ${"confirmed_txt"}      YOUR ORDER IS CONFIRMED

Verify de Order
    ${"confirmed_txt"}    Set Variable    xpath=//*[@id="content-hook_order_confirmation"]/div/div/div/h3
    Log To Console        ${"confirmed_txt"} 
    Element Should Contain      ${"confirmed_txt"}      YOUR ORDER IS CONFIRMED
     
    #sub total validation
    ${sub_Total}=   Get Text    xpath=//table/tbody/tr[1]/td[2]
    Log To Console         ${sub_Total}  
    Should Be Equal        ${sub_Total}    €98.89
