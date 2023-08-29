*** Variables ***
# Home page

${Url}                  https://webshop.mobiletestautomation.nl/
${Browser}              chrome


# Login page
${Username}             dantester@jourrapide.com
${Password}             1qazxsw2



# Register page

${FirstName}                    Dan
${LastName}                     Tester
${NewPassword}                  testing123!
${InvalidNewPassword}           923j
${Birthday}                     06/06/1999
${ReferenceInvalidEmail}        ./screenshots/RegistrationInvalidEmailReference.png
${ReferenceInvalidPassword}     ./screenshots/RegistrationInvalidPasswordReference.png

