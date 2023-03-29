***Keywords***

Navigate to HomePage
    Open Browser   ${url}      ${browser}
    Maximize Browser Window

Navigate to HomePage and show all products page 1
    Navigate to HomePage
    Go to All products page 1

Exit Browser
    Close Browser
    
Search product
    Input Text      class=ui-autocomplete-input  shirt
    Press Keys      class=ui-autocomplete-input	RETURN

Log out
    Click Link  css:a[class='logout hidden-sm-down']    