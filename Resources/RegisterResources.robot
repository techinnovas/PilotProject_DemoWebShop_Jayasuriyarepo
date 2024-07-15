*** Settings ***
Documentation   A resource file with reusable variables and keywords for register
Library    SeleniumLibrary

*** Variables ***
${register_click}    xpath=//a[text()='Register']
${female}    css=input#gender-female
${male}    css=input#gender-male
${firstname_L}    xpath=//input[@id='FirstName']
${lastname_L}    xpath=(//input[@class='text-box single-line'])[2]
${emails}    css=input#Email
${password}    css=input#Password
${con_pass}    xpath=(//input[@type='password'])[2]
${register_btn}    css=input#register-button
${success_msg}    css=div[class='result']
${invalid_msg}    xpath=//span[text()='First name is required.']

*** Keywords ***

click the register list
    Click Element    ${register_click}

Select the male radiobutton
    Select Radio Button    Gender    M

Select the female radiobutton
    Select Radio Button    Gender    F

Enter the value in the input field
    [Arguments]    ${firstname}     ${lastname}    ${email}    ${passw}    ${confir_pass}
    Input Text   ${firstname_L}     ${firstname}
    Input Text    ${lastname_L}    ${lastname}
    Input Text    ${emails}     ${email}
    Input Text    ${password}    ${passw}
    Input Text    ${con_pass}   ${confir_pass}

Empty of first name 
    [Arguments]        ${lastname}    ${email}    ${passw}    ${confir_pass}
    Input Text    ${lastname_L}    ${lastname}
    Input Text    ${emails}     ${email}
    Input Text    ${password}    ${passw}
    Input Text    ${con_pass}   ${confir_pass}

Click the register button
    Click Element      ${register_btn}

check for the success msg
    Element Text Should Be    ${success_msg}    Your registration completed

check for the invalid msg
    Element Text Should Be    ${invalid_msg}    First name is required.