*** Settings ***
Resource  ../Variables/LoginPageVariables.robot
Resource  ../Variables/HomePageVariables.robot


***Keywords***

Navigate to HomePage
    Open Browser   ${url}      ${browser}
    Maximize Browser Window

Exit Browser
    Close Browser
    
Search product
    Input Text      class=ui-autocomplete-input  shirt
    Press Keys      class=ui-autocomplete-input	RETURN

Log out
    Click Link  css:a[class='logout hidden-sm-down']    