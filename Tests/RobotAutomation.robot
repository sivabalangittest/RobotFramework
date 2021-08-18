*** Settings ***
Library  SeleniumLibrary
Resource  ../Data/InputData.robot
Resource  ../Resources/Common Components/WBBScreen.robot
Resource  ../Resources/Object Repository/WBBScreen.robot


*** Test Cases ***
TC1_Choose outfit, add to cart and proceed with checkout
    [Documentation]  To validate choose outfit, add to cart and proceed with checkout
    Open Browser  ${wbb_url}  ${chrome_browser}
    Maximize Browser Window
    User ia able to navigate Dresses and Casual Dresses
    User is able to add casual dress to cart and proceed to checkout
    Sleep   10s
    Close Browser

#TC2_No experience in J-Unit or TestNG tools

TC03_Automation script that will fail and provide screen shots or proof of failure
    [Documentation]  To capture screenshot during failure using inbuilt keywordß
    Open Browser  ${wbb_url}  ${chrome_browser}
    Maximize Browser Window
    User ia able to navigate Dresses and Winter Dresses
    Close Browser

TC04_Sign in with invalid data using already registered user option
    [Documentation]  To validate sign in using already registered user option
    Open Browser  ${wbb_url}  ${chrome_browser}
    Maximize Browser Window
    User is able to click the sign in
    User is able to enter email and password
    User is able to click sign in button
    User is able to validate authentication failure error message
    Close Browser

#   I will be automating login validation with different combination of email and password data
#   (parametrized and input provided through excel)
#   Priority - High
#   Purpose - Valid login is important for any successful transaction
#   Why - Combination of inputs provided by real time user is high


#Function to validate Password Format
#   def password_format(input_password):

    # Declaration of variables
#    letter = 0
#    number = 0
#    special_character = 0
#    not_allowed_special_character = 0

#    if 8 <= len(input_password) <= 20:
#        for char in input_password:
#            # count letter
#           if char.isalpha():
#               letter += 1
            # count number
#            if char.isnumeric():
#                number += 1
            # count allowed special character @ and !
#            if char == '@' or char == '!':
#                special_character += 1
            # count unallowed special character
#            if char == '#' or char == '$' or char == '%' or char == '^' or char == '&' or char == '*':
#                not_allowed_special_character += 1

#    if letter >= 1 and number >= 1 and special_character >= 1 and not_allowed_special_character == 0:
#        print('Password is in valid format')

#    else:
#        print('Password is in invalid format')


#password_format('a1@sdeqw')


