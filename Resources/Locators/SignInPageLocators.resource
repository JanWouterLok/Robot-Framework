*** Variables ***

${SIGN_IN_PAGE_HEADER} =                    xpath=//h1[@class='page-heading']
${SIGN_IN_PAGE_EMAIL_BOX} =                 name=email
${SIGN_IN_PAGE_PASSWORD_BOX} =              name=password
${SIGN_IN_BUTTON} =                         id=submit-login
${SIGN_IN_PAGE_INVALID_EMAIL_ERROR} =       xpath=//li[contains(text(),'Invalid email address.')]
${SIGN_IN_PAGE_INVALID_PASSWORD_ERROR} =    xpath=//li[contains(text(),'Invalid password.')]
${SIGN_IN_PAGE_AUTHENTICATION_ERROR} =      xpath=//li[contains(text(),'Authentication failed.')]