*** Settings ***
Documentation    To validate MyAccount
Library    SeleniumLibrary

*** Variables ***
${login_email}    xpath://input[@id='Email']
${login_pass}    xpath://input[@id='Password']
${login_btn}   xpath=//input[@class='button-1 login-button']
${profile_path}    (//a[@class='account'])[1]
${gender_male_path}    xpath://input[@id='gender-male']
${firstname_path}=    xpath://input[@id='FirstName']
${lastname_path}=    xpath://input[@id='LastName']
${email_path}=    xpath://input[@id='Email']
${save_path}=    xpath://input[@value='Save']


${profile_path}    (//a[@class='account'])[1]

${gender_male_path}    xpath://input[@id='gender-male']
${firstname_path}    xpath://input[@id='FirstName']
${lastname_path}    xpath://input[@id='LastName']
${email_path}    xpath://input[@id='Email']
${save_path}    xpath://input[@value='Save']

${addresses_path}    xpath:(//a[text()='Addresses'])[1]
${click_button_path}    css:input[class='button-1 add-address-button']
${add_firstname}    xpath://input[@id='Address_FirstName']
${add_lastname}    xpath://input[@id='Address_LastName']
${add_email}    xpath://input[@id='Address_Email']
${add_company}    xpath://input[@id='Address_Company']
${add_country}    xpath://select[@id='Address_CountryId']
${select_country}    xpath://option[@value='41']
${add_city}    xpath://input[@id='Address_City']
${add_address}    xpath://input[@id='Address_Address1']
${add_zip}    xpath://input[@id='Address_ZipPostalCode']
${add_phonenumber}    xpath://input[@id='Address_PhoneNumber']
${add_new_text_path}    css:label[for='Address_FirstName']
${edit_button}    xpath:(//input[@value='Edit'])[1]
${order_path}    xpath:(//a[text()='Orders'])[1]
${no_order_path}    xpath://h1[text()='My account - Orders']
${back_in_subscription}    xpath://a[text()='Back in stock subscriptions']
${back_in_subscription_text}    xpath://h1[text()='My account - Back in stock subscriptions']
${reward_points}    css:a[class='active']
${reward_points_details}    xpath://strong[text()='History']
${login}    xpath=//a[text()='Log in']
${order_path}    xpath:(//a[text()='Orders'])[1]
${no_order_path}    xpath://h1[text()='My account - Orders']

${back_in_subscription}    xpath://a[text()='Back in stock subscriptions']
${back_in_subscription_text}    xpath://h1[text()='My account - Back in stock subscriptions']

${reward_points}    xpath://h1[text()='My account - Back in stock subscriptions']
${reward_points_details}    xpath://h1[text()='My account - Reward points']

${change_password_path}    xpath://a[text()='Change password']
${visible_change_password}    xpath://h1[text()='My account - Change password']
${old_password_path}    xpath://input[@id='OldPassword']
${new_password_path}    xpath://input[@id='NewPassword']
${confirm_new_password_path}    xpath://input[@id='ConfirmNewPassword']
${visible_change_password}    xpath://div[@class='result']
${clickaccount}    xpath:(//li/a)[1]

*** Keywords ***
Fill login email
    Click Link    ${login}
    Input Text    ${login_email}    narayanasamy04082002@gmail.com
    Input Text    ${login_pass}    narayana
    Click Button    ${login_btn}

Click the gender in checkbox field
    Click Element    ${gender_male_path}

Enter first name in the firstname field
    [Arguments]    ${firstname}
    Input Text    ${firstname_path}    ${firstname}

Enter last name in the lastname field
    [Arguments]    ${lastname}
    Input Text    ${lastname_path}    ${lastname}
    Input Password    ${lastname_path}    ${lastname}

Enter email id in the email field
    [Arguments]    ${email}
    Input Text    ${email_path}    ${email}

Click save button
    Click Button    ${save_path}

Click the addresses button
    Click Element    ${addresses_path}

Click new address button in the address page
    Click Button    ${click_button_path}

Enter the first name in the company field
    [Arguments]    ${firstname1}
    Input Text    ${add_firstname}    ${firstname1}

Enter the last name in the company field
    [Arguments]    ${lastname1}
    Input Text    ${add_lastname}    ${lastname1}

Enter the email in the company field
    [Arguments]    ${email1}
    Input Text    ${add_email}    ${email1}

Enter company in the company field
    [Arguments]    ${company}
    Input Text    ${add_company}    ${company}

Click company in the company field
    [Arguments]    ${email}
    Click Element    ${add_company}    ${email}

Click country in the dropdown 
    Click Element    ${add_country}

Select country in the dropdown
    Click Element    ${select_country}

Enter city in the city text field
    [Arguments]    ${city}
    Input Text    ${add_city}    ${city}

Enter address1 in the address field
    [Arguments]    ${address}
    Input Text    ${add_address}    ${address}

Enter zip or postal number in the field
    [Arguments]    ${zip}
    Input Text    ${add_zip}    ${zip}

Enter phone number in the phone number field
    [Arguments]    ${phone}
    Input Text    ${add_phonenumber}    ${phone}

Check whether the Add new address is visible
    Click Element    ${add_city}

Enter the address1 in the address field
    [Arguments]    ${address}
    Click Element    ${add_address}    ${address}

Enter the zip or postal number in the field
    [Arguments]    ${zip}
    Click Element    ${add_zip}    ${zip}

Enter the phone number in the phone number field
    [Arguments]    ${phone}
    Click Element    ${add_phonenumber}    ${phone}

Check whether the Add new address are visible
    Should Be Equal As Strings    ${add_new_text_path}    First name:

Click edit button in the address page
    Click Button    ${edit_button}

Click the order button
    Click Element    ${order_path}

Check whether No orders is visible
    Element Should Be Visible    ${no_order_path}

Click order button
    Click Element    ${order_path}

Check Whether the No orders is visible
    Should Be Equal As Strings    ${no_order_path}    My account - Orders

Click the back in stock subscriptions button
    Click Element    ${back_in_subscription}

Check whether Back in stock subscriptions is visible
    Element Should Be Visible    ${back_in_subscription_text}

Check Whether the You are not currently subscribed to any Back In Stock notification lists is visible
    Should Be Equal As Strings    ${back_in_subscription_text}    My account - Back in stock subscriptions

Click Reward points button
    Click Element    ${reward_points}

Verify the details in reward points
    Element Text Should Be    ${reward_points_details}    History

Check whether Reward points are visible
    Should Be Equal As Strings    ${reward_points_details}    My account - Reward points

Click change password button
    Click Element    ${change_password_path}

Check whether Change password is visible
    Element Should Be Visible    ${visible_change_password}

Check whether Change password are visible
    Should Be Equal As Strings    ${visible_change_password}    My account - Change password

Enter old password in the old password field
    Input Text    ${old_password_path}    narayana
    
Enter new password in the new password field
    Input Text    ${new_password_path}    narayana

Enter confirm password in the confirm password field
    Input Text    ${confirm_new_password_path}    narayana

Check whether Password was changed is visible
    Element Should Be Visible    ${visible_change_password}

Check whether Password was changed are visible
    Should Be Equal As Strings    ${visible_change_password}    Password was changed 

Click account
    Click Link    ${clickaccount}