*** Variables ***
# Home Page Locators
${signinLink}                   css:a[title='Log in to your customer account']
${logoutButton}                 css:a[class='logout hidden-sm-down']
${searchboxInputField}          class=ui-autocomplete-input
${homePage}                     id=_desktop_logo
${myAccountPage}                class=account
${contactUsPage}                id=contact-link
${accessoriesPage}              //*[@id="category-6"]/a
${firstItem}                    //*[@id="content"]/section/div/div[1]/article/div
${secondItem}                   //*[@id="content"]/section/div/div[2]/article/div
${thirdItem}                    //*[@id="content"]/section/div/div[3]/article/div
${fourthItem}                   //*[@id="content"]/section/div/div[4]/article/div
${fifthItem}                    //*[@id="content"]/section/div/div[5]/article/div
${sixthItem}                    //*[@id="content"]/section/div/div[6]/article/div
${seventhItem}                  //*[@id="content"]/section/div/div[7]/article/div
${eighthItem}                   //*[@id="content"]/section/div/div[8]/article/div

# Contact Us Locators
${subjectContactUs}             name=id_contact
${emailContactUs}               name=from
${messageTextContactUs}         name=message
${submitContactUs}              name=submitMessage
${confirmContactUsSend}         //*[@id="content"]/section/form/div/ul/li

# Search Locators
${searchResults}                class=products row

# Login Locators
${emailInputField}              name=email
${passwordInputField}           name=password
${signinButton}                 id:submit-login

# User Account Locators
${firstAddressPage}             id=address-link
${addressPage}                  id=addresses-link
${orderHistoryDetails}          id=history-link
${orderDetails}                 xpath=//a[contains(text(),'Details')]
${orderReorder}                 //*[@id="content"]/table/tbody/tr[1]/td[6]/a[2]
${selectOrderedProduct}         name=id_product
${messageAboutProduct}          name=msgText
${sendMessageAboutProduct}      name=submitMessage
${messageProductSuccessful}     css:article[class='alert alert-success']

# Manage Address Locators
${deleteAddress}                css:a[data-link-action='delete-address']
${addNewAddress}                css:a[data-link-action='add-address']
${newAddressField}              name=address1
${newPostalCodeField}           name=postcode
${newCityField}                 name=city
${newCountryField}              name=id_country
${saveButton}                   xpath=(//button[@type='submit'])[2]
${verifyAddress}                //*[@id="notifications"]/div/article/ul/li

# Register Locators
${socialTitleRadioButton}       id_gender
${firstnameInputField}          name=firstname
${lastnameInputFeld}            name=lastname
${emailInputField}              name=email
${passwordInputField}           name=password
${birthdayInputField}           name=birthday
${receiveOfferCheckbox}         name=optin
${receiveNewsletterCheckbox}    name=newsletter
${usernameDisplayField}         class=account

# Product Viewing Page Locators
${addToCart}                    //button[@class='btn btn-primary add-to-cart']
${continueShopping}             //*[@id="blockcart-modal"]/div/div/div[2]/div/div[2]/div/div/button
${proceedToCheckout}            //*[@id="blockcart-modal"]/div/div/div[2]/div/div[2]/div/div/a
${confirmAddedToCart}           class=modal-title.h6.text-sm-center
${confirmAmountInCart}          //*[@id="blockcart-modal"]/div/div/div[2]/div/div[2]/div/p[1]
${quantityInputField}           name=qty
${dimensionsDropDown}           class=form-control.form-control-select

# Cart Page Locators
${goToCheckout}                  css:a[class='btn btn-primary']

# Checkout Page Locators
${continueAfterChoosingAddress}  css:button[class='btn btn-primary continue float-xs-right']
${continueAfterShippingMethod}   css:button[name='confirmDeliveryOption']
${placeOrderButton}              css:button[class='btn btn-primary center-block']
${firstAddressCheckout}          xpath=//label/span/span
${secondAddressCheckout}         xpath=//article[2]/header/label/span/input
${pickUpShippingMethod}          //*[@id="js-delivery"]/div/div[1]/div[1]/div/span/span
${myCarierShippingMethod}        id=delivery_option_2
${payByCheckRadioButton}         css:input[id='payment-option-1']
${payByBankWireRadioButton}      css:input[id='payment-option-2']
${agreeToTerms}                  css:input[id='conditions_to_approve[terms-and-conditions]']
${paymentTotal}                  css:span[class='price']
${orderConfirmed}                css:h3[class='h1 card-title']

# Accessories Page Locators
${fifthItemAccPage}             //*[@id="js-product-list"]/div[1]/div[5]/article/div/a