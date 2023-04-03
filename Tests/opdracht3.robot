*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginPageKeywords.robot
Resource          ../Resources/Variables/LoginPageVariables.robot
Resource          ../Resources/Variables/RegisterPageVariables.robot
Resource          ../Resources/Keywords/ProductsPageKeywords.robot
Resource          ../Resources/Keywords/RegisterPageKeywords.robot
Resource          ../Resources/Keywords/HomePageKeywords.robot
Resource          ../Resources/Keywords/HomePageVariables.robot
Library           String
Test Setup        Navigate to HomePage
Test Teardown     Exit Browser






*** Test Cases ***
Create a new account and a new address, then adds 5 items to the cart and confirms it.
    Navigate to HomePage
    Open a new account
    sleep                 3
    Adres Addition
    sleep                 3
    Navigate to WebShop Page
    Execute Javascript    window.scrollTo(0,500)
    Click Link            xpath=//*[@id="content"]/section/div/div[6]/article/div/a
    sleep                 2
    To Click Quantity
    Add to Element to Cart
    Add a Brown Bear Cushion
    Add a Mug the Adventure Begins
    Add a Humminbird Notebook
    #Order Plaatsen en Versturen
    #Verify de Order


Current User Adds and validates products to the Cart
    Navigate to HomePage
    Log in                ${Username}          ${Password}
    Navigate to WebShop Page
    Add a Mug the Adventure Begins
    Add a Hummingbird Printed T-Shirt
    Add a Brown Bear Cushion
    Add a Humminbird Notebook
    Add a Brown Bear Cushion
    #Order Plaatsen en Versturen
    #Verify de Order
    Exit Browser


Verify that some products should not be added to the cart
    Log in       ${Username}          ${Password}
    Add an Orange to Cart
    Add a Banana to Cart
    Add Valori Mobile App
    

# AdresAdditionTest
#     Navigate to HomePage
#     Log in                doejohn@test.nl            Test1234!
#     Adres Addition
    