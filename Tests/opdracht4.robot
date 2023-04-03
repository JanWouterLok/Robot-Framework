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
Order and verify product
    Log in                ${Username}          ${Password}
    Navigate to WebShop Page
    Add a Mug the Adventure Begins
    Add a Hummingbird Printed T-Shirt
    Add a Brown Bear Cushion
    Add a Humminbird Notebook
    Add a Brown Bear Cushion
    Order Plaatsen en Versturen
    Verify de Order
    
     




    
