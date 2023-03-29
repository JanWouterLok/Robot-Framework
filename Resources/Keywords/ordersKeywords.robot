*** Keywords ***
Add product in cart
    sleep  3s
Add product to shopping cart
    Click Button  css:button[data-button-action=add-to-cart]
    Wait Until Element Is Visible  css:div[class=cart-content-btn] button
    Click Button  css:div[class=cart-content-btn] button
    Wait Until Element Is Not Visible  css:div[class=cart-content-btn] button

Add product to shopping cart and pay everything
    Click Button  css:button[data-button-action=add-to-cart]
    Wait Until Element Is Visible  css:div[class=cart-content-btn] a
    Click Element  css:div[class=cart-content-btn] a
    Wait Until Element Is Not Visible  css:div[class=cart-content-btn] a

Navigate to homepage via BreadcrumbList
    Click Element  css:ol[itemtype='http://schema.org/BreadcrumbList'] span

Click proceed to checkout button
    Click Element  css:a[href='https://webshop.mobiletestautomation.nl/order']

Fill address and confirm 
    Input Text  css:input[name=address1]  Straat
    Input Text  css:input[name=address2]  21
    Input Text  css:input[name=postcode]  1111 AA
    Input Text  css:input[name=city]  Steenwijk
    Click Button  css:button[name=confirm-addresses]

Place order and confirm
    Click Button  css:button[name=confirmDeliveryOption]
    Click Element  css:input[id=payment-option-2]
    Click Element  css:input[id='conditions_to_approve[terms-and-conditions]']
    Click Button  Place order
    Element Should Contain  css:h3[class='h1 card-title']  YOUR ORDER IS CONFIRMED

Add 5 products to the shopping cart
    Select Mug The Adventure Begins
    Add product to shopping cart    
    Go to All products page 2 via Breadcrumblist
    Select Hummingbird - Vector Graphics
    Add product to shopping cart    
    Go to All products page 1 via Breadcrumblist
    Select Brown Bear Cushion
    Add product to shopping cart    
    Go to All products page 2 via Breadcrumblist
    Select Mountain Fox Notebook
    Add product to shopping cart    
    Go to All products page 1 via Breadcrumblist
    Select Today Is A Good Day Framed Poster
    Add product to shopping cart and pay everything
    Element Text Should Be  css:span[class=cart-products-count]  (5)

Go to All products page 1
    Click Link  css:a[href='https://webshop.mobiletestautomation.nl/2-home']

Go to All products page 1 via Breadcrumblist
    Navigate to homepage via BreadcrumbList
    Go to All products page 1

Go to All products page 2 via Breadcrumblist
    Navigate to homepage via BreadcrumbList
    Go to All products page 1
    Click Link  css:a[rel=nofollow][href='https://webshop.mobiletestautomation.nl/2-home?page=2']

Select Mug The Adventure Begins
    Wait Until Element Is Visible  css:img[src='https://webshop.mobiletestautomation.nl/7-home_default/mug-the-adventure-begins.jpg']
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/7-home_default/mug-the-adventure-begins.jpg']

Select Hummingbird - Vector Graphics
    Wait Until Element Is Visible  css:img[src='https://webshop.mobiletestautomation.nl/17-home_default/hummingbird-vector-graphics.jpg']
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/17-home_default/hummingbird-vector-graphics.jpg']

Select Brown Bear Cushion
    Wait Until Element Is Visible  css:img[src='https://webshop.mobiletestautomation.nl/11-home_default/brown-bear-cushion.jpg']
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/11-home_default/brown-bear-cushion.jpg']

Select Mountain Fox Notebook
    Wait Until Element Is Visible  css:img[src='https://webshop.mobiletestautomation.nl/18-home_default/mountain-fox-notebook.jpg']
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/18-home_default/mountain-fox-notebook.jpg']

Select Today Is A Good Day Framed Poster
    Wait Until Element Is Visible  css:img[src='https://webshop.mobiletestautomation.nl/5-home_default/today-is-a-good-day-framed-poster.jpg']
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/5-home_default/today-is-a-good-day-framed-poster.jpg']

Select Mug Today Is A Good Day
    Wait Until Element Is Visible  css:img[src='https://webshop.mobiletestautomation.nl/8-home_default/mug-today-is-a-good-day.jpg']
    Click Element  css:img[src='https://webshop.mobiletestautomation.nl/8-home_default/mug-today-is-a-good-day.jpg']

Order something and send to your own address
    Select Mug Today Is A Good Day
    Add product to shopping cart and pay everything
    Click proceed to checkout button
    Fill address and confirm 
    Place order and confirm
