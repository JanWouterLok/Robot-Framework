*** Settings ***

Library         OperatingSystem
Library         Dialogs
Library         String
Resource        ../Resources/ValoriWebShop.resource
Resource        ../Resources/Common.resource
Resource        ../Resources/Variables/TestCasesVariables.resource
Test Setup      Start web test
Test Teardown   End web test

*** Test Cases ***

Should be able to run tests in different browsers
    [Documentation]     As a user I want to be able to open the webshop and run the tests in different browsers
    [Tags]    TC-001    Smoke   Critical_001    Open Webshop
    ${new_browser} =  Get Selection From User    Choose a browser to run this suite with    chrome    headlesschrome      firefox    headlessfirefox     edge
        Set Global Variable    ${BROWSER}    ${new_browser}

Should be able to open webshop
    [Documentation]     As a user I want to be able to open the webshop
    [Tags]    TC-002    Smoke   Critical_002   Open Webshop

        ValoriWebShop.Go to Valori Webshop landing page

Should be able to sign in webshop
    [Documentation]     Enter a valid username&password and sign in
    [Tags]    TC_WS_001    Smoke   Sign in Webshop

        ValoriWebShop.Go to Valori Webshop landing page
        ValoriWebShop.Sign in to Valori Webshop

Should not be able to login with invalid email and valid password
    [Documentation]     Enter an invalid username&password and try to sign in
    [Tags]    TC_WS_002    Functional   Sign in Webshop


        ValoriWebshop.Go to Valori Webshop landing page
        ValoriWebshop.Sign in to Valori Webshop with invalid email

Should not be able to login with valid email and invalid password
    [Documentation]     Enter an invalid username&password and try to sign in
    [Tags]    TC_WS_003    Functional   Sign in Webshop

        ValoriWebshop.Go to Valori Webshop landing page
        ValoriWebshop.Sign in to Valori Webshop with invalid password

Should not be able to login with invalid username and invalid password
    [Documentation]     Enter an invalid username&password and try to sign in
    [Tags]    TC_WS_004    Functional   Sign in Webshop

        ValoriWebshop.Go to Valori Webshop landing page
        ValoriWebshop.Sign in to Valori Webshop with invalid email and password

Should be able to create an account and confirm account has been created
    [Documentation]     Confirm that the account has been successfully created by verifying that the confirmation page or message states that the account has been created
    [Tags]    TC_WS_005    Functional   Create Account

        ValoriWebShop.Go to Valori Webshop landing page
        ValoriWebShop.Create a "Mr." account on Valori Webshop

Should not be able to create an account without using "@" in the email address
    [Documentation]     Enter invalid email address and try to create an account
    [Tags]    TC_WS_006    Functional   Create Account


        ValoriWebShop.Go to Valori Webshop landing page
        ValoriWebShop.Create a "Mr." account on Valori Webshop with invalid email

Should not be able to create account without when using less than five charactere in password box.
    [Documentation]     Enter invalid password and try to create an account
    [Tags]    TC_WS_007    Functional   Create Account

        ValoriWebShop.Go to Valori Webshop landing page
        ValoriWebShop.Create a "Mr." account on Valori Webshop with invalid password

Should be able to add five items to cart and confirm those items are added to cart
    [Documentation]     Add five items to cart and confirm those items are added to cart
    [Tags]    TC_WS_008    Functional   Add to Cart

        ValoriWebShop.Go to Valori Webshop landing page
        ValoriWebShop.Add 5 products to cart

Should be able to add address to existing user
    [Documentation]     Add address to existing user
    [Tags]    TC_WS_009    Functional   Add Address

        ValoriWebShop.Go to Valori Webshop landing page
        ValoriWebShop.Sign in to Valori Webshop
        ValoriWebShop.Add address to existing user

Should be able to place an order and go to own address
    [Documentation]     Place an order and go to own address
    [Tags]    TC_WS_010    Functional   Place Order

        ValoriWebShop.Go to Valori Webshop landing page
        ValoriWebShop.Sign in to Valori Webshop
        ValoriWebShop.Place an order and go to own address


Should be able to send a message about the order and confirm that the message is sent
    [Documentation]     Send a message about the order and confirm that the message is sent
    [Tags]    TC_WS_011    Functional   Send Message

        ValoriWebShop.Go to Valori Webshop landing page
        ValoriWebShop.Sign in to Valori Webshop
        ValoriWebShop.Send a message about the order and confirm that the message is sent

Should be able to search for product and confirm that the product is found
    [Documentation]     Search for product and confirm that the product is found
    [Tags]    TC_WS_012    Functional   Search Product

        ValoriWebShop.Go to Valori Webshop landing page
        ValoriWebShop.Search for product and confirm that the product is found

Should be able to file a complaint and confirm that the complaint is filed
    [Documentation]     File a complaint and confirm that the complaint is filed
    [Tags]    TC_WS_013    Functional   File Complaint

#       1. Go to the homepage
#       2. Click on 'Contact us'
#       3. Choose a department
#       4. Enter an e-mailadress
#       5. Enter your complaint to messagetextbox
#       6. Click on "SEND" button
#       7. Verify that the complaint was sent and "Your message has been successfully sent to our team." message is displayed.


#Should be able to use "Forgot password" functionality
#
#Should be able to review order history
#
#Should be able to review credit slips
#
#Should be able to search for product
#
#Should be able to checkout product
#
#Should be able to use the quick view functionality on products
#
#Should be able to use the Top Navigation
#
#Should be able to use the Footer Navigation
#
#Should be able to order multiple products and the payment amount should be correct
#
#Should be able to delete account
#
