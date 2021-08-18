*** Settings ***
Library  SeleniumLibrary
Resource    ../Object Repository/WBBScreen.robot
Resource    Data/InputData.robot


*** Keywords ***
User is able to click best sellers tab
    Wait Until Page Contains Element    ${best_sellers_tab}     error=Best Sellers tab is not displayed     timeout=10s
    Click Element   ${best_sellers_tab}

User is able to select Printed Chiffon Dress
    Wait Until Page Contains Element    ${dress_printed_chiffon}        error=Printed Chiffon dress is not displayed    timeout=10s
    Sleep   10s
    Click Element   ${dress_printed_chiffon}
    Wait Until Page Contains    ${text_printed_chiffon}     error= Printed Chiffon Dress is not displayed   timeout=10s


User ia able to navigate Dresses and Casual Dresses
    Wait Until Page Contains Element    ${menu_dressess}      error=Dresses option is not displayed   timeout=10s
    Click Element   ${menu_dressess}
    Wait Until Page Contains Element    ${menu_subcategories_casual}   error=Casual Dresses option is not displayed    timeout=10s
    Click Element   ${menu_subcategories_casual}

User is able to add casual dress to cart and proceed to checkout
    Wait Until Page Contains Element    ${icon_list}     error=Grid view is not displayed    timeout=10s
    Click Element   ${icon_list}
    Wait Until Page Contains Element    ${value_productprice}       error=Price is not displayed       timeout=10s
    ${expected_price}     Get Text    ${value_productprice}
    Wait Until Page Contains Element    ${btn_addtocart}      error=Add to Cart option is not dispalyed   timeout=10s
    Click Element   ${btn_addtocart}
    Wait Until Page Contains    ${text_productadded}    error=Text Product successfully added to your shopping cart is not displayed    timeout=10s
    Wait Until Page Contains Element    ${btn_proceedcheckout}   error=Proceed to checkout button is not displayed   timeout=10s
    Sleep   10s
    Click Element   ${btn_proceedcheckout}
    Wait Until Page Contains Element    ${tab_summary}   error=SUMMARY is not displayed   timeout=10s
    Wait Until Page Contains Element    ${value_itemprice}    error=Unit Price is not displayed   timeout=10s
    ${actual_price}     Get Text    ${value_itemprice}
    Run Keyword If  '${expected_price}' == '${actual_price}'
    ...         Log     Item price matches in checkout screen
    ...         ELSE
    ...         FAIL    Item price not matched in checkout screen
    Wait Until Page Contains Element    ${btn_proceedtocheckout}
    Click Element   ${btn_proceedtocHeckout}
    Wait Until Page Contains Element     ${tab_signup}     error=Sign in tabß is not displayed      timeout=10s


User ia able to navigate Dresses and Winter Dresses
    Wait Until Page Contains Element    ${menu_dressess}      error=Dresses option is not displayed   timeout=10s
    Click Element   ${menu_dressess}
    Wait Until Page Contains Element    ${menu_subcategories_winter}   error=Winter Dresses option is not displayed    timeout=10s
    Capture Page Screenshot


User is able to click the sign in
    Wait Until Page Contains Element    ${sign_in}     error=Sign in option is not displayed   timeout=10s
    Click ELement   ${sign_in}
    Wait Until Page Contains Element    ${form_login}   error=Login page is not displayed   timeout=10s

User is able to enter email and password
    Wait Until Page Contains Element    ${email_address}    error=Email field is not displayed      timeout=10s
    Input Text  ${email_address}    ${email_input}
    Wait Until Page Contains Element    ${login_password}   error=Password field is not displayed   timeout=10s
    Input Text  ${login_password}   ${password_input}


User is able to click sign in button
    Wait Until Page Contains Element    ${btn_signin}   error=Sign in button is not displayed   timeout=10s
    Click Element   ${btn_signin}


User is able to validate authentication failure error message
    Page Should Contain     ${text_authentication_failed}   error=Authentication failed error is not displayed
