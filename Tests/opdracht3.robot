*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Keywords/LoginKeywords.robot
Resource          ../Resources/Variables/LoginVariables.robot
Resource          ../Resources/Variables/RegisterVariables.robot
Resource          ../Resources/Keywords/ProductsKeywords.robot
Resource          ../Resources/Keywords/RegisterKeywords.robot
Library           String
Test Setup        Navigate to HomePage
Test Teardown     Exit Browser





*** Test Cases ***
Voeg 5 producten toe
    Navigate to HomePage
    #Log in                ${Username}          ${Password}
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


Voeg producten op de cart toe
    Navigate to HomePage
    Open a new account
    Adres Addition
    Navigate to WebShop Page
    Add a Mug the Adventure Begins
    Add a Hummingbird Printed T-Shirt
    Add a Brown Bear Cushion
    Add a Humminbird Notebook
    Add a Brown Bear Cushion
    #Order Plaatsen en Versturen
    #Verify de Order
    Exit Browser


Product kan niet toevoegen
    Log in       ${Username}          ${Password}
    Add a Banana to Cart