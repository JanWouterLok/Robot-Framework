*** Keywords ***


Log in
    Click Link         css:a[title='Log in to your customer account']
    Input text         name=email    ${username} 
    Input Password     name=password              ${Password}
    Click Button       id:submit-login
    
Log in and confirm that user is signed in
    Log in
    Wait Until Element Contains  class=account  ${firstname} ${lastname}