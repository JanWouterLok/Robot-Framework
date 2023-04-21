***Keywords***
Navigate to HomePage
    Open Browser   ${url}      ${browser}
    Maximize Browser Window

Exit Browser
    Close Browser
    
Search product
    Input Text      ${searchboxInputField}  shirt
    Press Keys      ${searchboxInputField}	RETURN

Log out
    Click Link  ${logoutButton}  