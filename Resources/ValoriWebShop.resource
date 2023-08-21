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
Resource            ../Resources/PO/AddressPage.resource
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

Sign in to Valori Webshop with invalid password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter Email
        SignInPage.Enter invalid password
        SignInPage.Click sign in
        SignInPage.Verify authentication failed message displayed

Sign in to Valori Webshop with invalid email and password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Enter invalid Email
        SignInPage.Enter invalid password
        SignInPage.Click sign in
        SignInPage.Capture Page Screenshot after entering invalid email and password

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

Create a "Mrs." account on Valori Webshop with invalid email
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Click create an account link
        CreateAccountPage.Verify Create Account page loaded
        CreateAccountPage.Click radio button "Mrs."
        GenerateAndUseMockData.Generate and Use "Create Account" Mock Data with invalid email
        CreateAccountPage.Enter date of birth
        CreateAccountPage.Click "Receive offers" checkbox
        CreateAccountPage.Click "Sign up for newsletter" checkbox
        CreateAccountPage.Click "Save" new account button
        CreateAccountPage.Verify invalid email message displayed

Create a "Mr." account on Valori Webshop with invalid password
        TopNav.Click sign in link
        SignInPage.Verify Sign In page loaded
        SignInPage.Click create an account link
        CreateAccountPage.Verify Create Account page loaded
        CreateAccountPage.Click radio button "Mr."
        GenerateAndUseMockData.Generate and Use "Create Account" Mock Data with invalid password
        CreateAccountPage.Enter date of birth
        CreateAccountPage.Click "Receive offers" checkbox
        CreateAccountPage.Click "Sign up for newsletter" checkbox
        CreateAccountPage.Click "Save" new account button
        CreateAccountPage.Verify invalid password message displayed

Add 5 products to cart
        LandingPage.Click product "HummingBird Printed T-Shirt"
        SingleProductPage.Select "Size M" dropdown
        SingleProductPage.Click "Add to cart" button
        OrderDropDown.Click "Continue shopping" button
        TopNav.Click "Valori" logo
        LandingPage.Click product "The Adventure Begins Framed Poster"
        SingleProductPage.Select "Dimensions" "40 x 60cm"
        SingleProductPage.Click "Add to cart" button
        OrderDropDown.Click "Continue shopping" button
        TopNav.Click "Valori" logo
        LandingPage.Click product "HummingBird Printed Sweater"
        SingleProductPage.Select "Size L" dropdown
        SingleProductPage.Click "Add to cart" button
        OrderDropDown.Click "Continue shopping" button
        TopNav.Click "Valori" logo
        LandingPage.Click product "The Best is Yet to Come Framed Poster"
        SingleProductPage.Select "Dimensions" "60 x 90cm"
        SingleProductPage.Click "Add to cart" button
        OrderDropDown.Click "Continue shopping" button
        TopNav.Click "Valori" logo
        LandingPage.Click product "The Best is Yet to Come Mug"
        SingleProductPage.Click "Add to cart" button
        OrderDropDown.Click "Proceed to checkout" button
        CartPage.Verify Cart page loaded
        Cartpage.Verify products in cart
        CartPage.Click "Proceed to checkout" button
        AddressPage.Verify Address page loaded






