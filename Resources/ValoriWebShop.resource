*** Settings ***
Resource            ../Resources/PO/AccountPage.resource
Resource            ../Resources/PO/FooterNav.resource
Resource            ../Resources/PO/LandingPage.resource
Resource            ../Resources/PO/SignInPage.resource
Resource            ../Resources/PO/TopNav.resource
Resource            ../Resources/PO/CreateAccountPage.resource
Resource            ../Resources/PO/SingleProductPage.resource
Resource            ../Resources/PO/OrderModal.resource
Resource            ../Resources/PO/CartPage.resource
Resource            ../Resources/PO/AccountAddressPage.resource
Resource            ../Resources/PO/NewAddressPage.resource
Resource            ../Resources/Keywords/GenerateAndUseMockData.resource


*** Keywords ***

Go to Valori Webshop landing page
        LandingPage.Load
        LandingPage.Verify page loaded

Sign in to Valori Webshop
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter Email
        SignInPage.Enter password
        SignInPage.Click sign in
        AccountPage.Verify Account page loaded

Sign in to Valori Webshop with invalid email
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter invalid Email
        SignInPage.Enter password
        SignInPage.Click sign in
        SignInPage.Capture Page Screenshot after entering invalid email
        SignInPage.Compare screenshot after entering invalid email
        SignInPage.Verify if still on sign in page after entering invalid email and/or password

Sign in to Valori Webshop with invalid password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter Email
        SignInPage.Enter invalid password
        SignInPage.Click sign in
        SignInPage.Verify authentication failed message displayed
        SignInPage.Verify if still on sign in page after entering invalid email and/or password

Sign in to Valori Webshop with invalid email and password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter unknown Email
        SignInPage.Enter invalid password
        SignInPage.Click sign in
        SignInPage.Verify authentication failed message displayed
        SignInPage.Verify if still on sign in page after entering invalid email and/or password

Create a "Mr." account on Valori Webshop
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Click create an account link
        CreateAccountPage.Verify Create Account page loaded
        CreateAccountPage.Click radio button "Mr."
        GenerateAndUseMockData.Generate and Use Valid "Create Account" Mock Data
        CreateAccountPage.Enter date of birth
        CreateAccountPage.Click "Receive offers" checkbox
        CreateAccountPage.Click "Sign up for newsletter" checkbox
        CreateAccountPage.Click "Save" new account button
        TopNav.Click logged in user link
        AccountPage.Verify Account page loaded

Create a "Mr." account on Valori Webshop with invalid email
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Click create an account link
        CreateAccountPage.Verify Create Account page loaded
        CreateAccountPage.Click radio button "Mr."
        CreateAccountPage.Enter First Name
        CreateAccountPage.Enter Last Name
        CreateAccountPage.Enter Invalid Email
        CreateAccountPage.Enter Password
        CreateAccountPage.Enter date of birth
        CreateAccountPage.Click "Receive offers" checkbox
        CreateAccountPage.Click "Sign up for newsletter" checkbox
        CreateAccountPage.Click "Save" new account button
        CreateAccountPage.Capture screenshot after entering invalid email
        CreateAccountPage.Compare screenshot after entering invalid email
        CreateAccountPage.Verify if still on create account page after entering invalid email

Create a "Mr." account on Valori Webshop with invalid password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Click create an account link
        CreateAccountPage.Verify Create Account page loaded
        CreateAccountPage.Click radio button "Mr."
        CreateAccountPage.Enter First Name
        CreateAccountPage.Enter Last Name
        CreateAccountPage.Enter valid Email
        CreateAccountPage.Enter Wrong Format Password
        CreateAccountPage.Enter date of birth
        CreateAccountPage.Click "Receive offers" checkbox
        CreateAccountPage.Click "Sign up for newsletter" checkbox
        CreateAccountPage.Click "Save" new account button
        CreateAccountPage.Capture screenshot after entering invalid password
        CreateAccountPage.Compare screenshot after entering invalid password
        CreateAccountPage.Verify if still on create account page after entering invalid password

Add 5 products to cart
        LandingPage.Click product "HummingBird Printed T-Shirt"
        SingleProductPage.Select "Size M" dropdown
        SingleProductPage.Click "Add to cart" button
        OrderModal.Verify Order Modal is displayed
        OrderModal.Click "Continue shopping" button
        SingleProductPage.Click "Home" link
        LandingPage.Click product "The Adventure Begins Framed Poster"
        SingleProductPage.Select "Dimensions" "40 x 60cm"
        SingleProductPage.Click "Add to cart" button
        OrderModal.Verify Order Modal Is Displayed
        OrderModal.Click "Continue shopping" button
        SingleProductPage.Click "Home" link
        LandingPage.Click product "HummingBird Printed Sweater"
        SingleProductPage.Select "Size L" dropdown
        SingleProductPage.Click "Add to cart" button
        OrderModal.Verify Order Modal Is Displayed
        OrderModal.Click "Continue shopping" button
        SingleProductPage.Click "Home" link
        LandingPage.Click product "The Best is Yet to Come Framed Poster"
        SingleProductPage.Select "Dimensions" "60 x 90cm"
        SingleProductPage.Click "Add to cart" button
        OrderModal.Verify Order Modal Is Displayed
        OrderModal.Click "Continue shopping" button
        SingleProductPage.Click "Home" link
        LandingPage.Click product "The Best is Yet to Come Mug"
        SingleProductPage.Click "Add to cart" button
        OrderModal.Verify Order Modal Is Displayed
        OrderModal.Click "Proceed to checkout" button
        CartPage.Verify Cart page loaded
        Cartpage.Verify products in cart
        CartPage.Remove items from cart

Add address to existing user
	    AccountPage.Click "Addresses" Element
        AccountAddressPage.Verify Account Address Page Loaded
        ${create_address_link_visible}=         Run Keyword And Return Status
        ...     Page Should Contain Element     ${ACCOUNT_ADDRESS_PAGE_CREATE_NEW_ADDRESS_ELEMENT}
        Run Keyword If                          ${create_address_link_visible}
        ...     AccountAddressPage.Click "Create new address" Element
        ...     ELSE    AccountPage.Click "Addresses" element
        NewAddressPage.Verify New Address Page Loaded
        NewAddressPage.Enter "Address"
        NewAddressPage.Enter "Zip/postal code"
        NewAddressPage.Enter "City"
        NewAddressPage.Select "Country" "Netherlands"
        NewAddressPage.Click "Save" button
        AccountAddressPage.Verify "Address succesfully added!" message is displayed
        AccountAddressPage.Verify address added to existing user
        AccountAddressPage.Delete address from existing user
        AccountAddressPage.Click "Home" Element
        TopNav.Click "Sign out" link

Place an order and go to own address

        AccountPage.Click "Addresses" Element
        AccountAddressPage.Verify Account Address Page Loaded
        ${create_address_link_visible}=         Run Keyword And Return Status
        ...     Page Should Contain Element     ${ACCOUNT_ADDRESS_PAGE_CREATE_NEW_ADDRESS_ELEMENT}
        Run Keyword If                          ${create_address_link_visible}
        ...     AccountAddressPage.Click "Create new address" Element
        ...     ELSE    AccountPage.Click "Addresses" element
        NewAddressPage.Verify New Address Page Loaded
        NewAddressPage.Enter All Address Fields "France"
        NewAddressPage.Click "Save" button
        AccountAddressPage.Verify "Address succesfully added!" message is displayed
        TopNav.Click "Clothes" Element
        ClothesProductsPage.Verify "Clothes" Products Page Loaded
        ClothesProductsPage.Click "Hummingbird Printed T-shirt" Picture
        SingleProductPage.Verify "Hummingbird Printed T-shirt" Product Page Loaded
        SingleProductPage.Select "Size M" Dropdown
        SingleProductPage.Click "Color" Black Radio Buttton
        SingleProductPage.Select "Quantity" "2" from Dropdown
        SingleProductPage.Click "Add to cart" button
        OrderModal.Verify Order Modal Is Displayed
        OrderModal.Click "Proceed to checkout" button
        CartPage.Verify Cart page loaded
        CartPage.Click "Proceed to checkout" button
        CheckoutPage.Verify Checkout page "Personal information"loaded
        CheckoutPage.Choose an address "France"
        CheckoutPage.Click "Continue" button
        CheckoutPage.Verify Checkout page "Shipping method" loaded
        CheckoutPage.Choose shipping method "My carrier"
        CheckoutPage.Click "Continue" button
        CheckoutPage.Verify Checkout page "Payment method" loaded
        CheckoutPage.Choose payment method "Pay by bank wire"
        CheckoutPage.Check "I agree with the terms of service and will adhere to them unconditionally." Checkbox
        CheckoutPage.Click "Continue" button
        OrderSummaryPage.Verify Order Summary page loaded
        OrderSummaryPage.Verify Order Summary page "YOUR ORDER IS CONFIRMED" message is displayed














