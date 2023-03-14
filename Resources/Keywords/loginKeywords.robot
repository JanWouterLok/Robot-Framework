*** Keywords ***
Navigate to HomePage
    Open Browser   ${url}      ${browser}
    Maximize Browser Window

Exit Browser
    Close Browser

Log in
    Click Link         xpath=//*[@id="_desktop_user_info"]/div/a
    Input text         name=email    ${username} 
    Input Password     name=password              ${Password}
    Click Button       id=submit-login