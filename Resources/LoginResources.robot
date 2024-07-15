*** Settings ***
Documentation    A resource file with reusable variables and keywords for login
Library    SeleniumLibrary


*** Variables ***
${login}    xpath=//a[text()='Log in']
${email}     xpath=//input[@class='email']
${passwords}    xpath=//input[@class='password']
${remember_me}    xpath=//input[@id='RememberMe']
${forgot_pass}    xpath=//a[text()='Forgot password?']
${login_btn}    xpath=//input[@class='button-1 login-button']
${login_msg}    xpath=//a[text()='j.k.rose1@gmail.com']
${invalid_msg}    xpath=//div[@class='message-error']
${invalids_msg}    Login was unsuccessful. Please correct the errors and try again.\nNo customer account found
${for_email}    xpath=//input[@class='email']
${recover}    xpath=//input[@class='button-1 password-recovery-button']
${for_sucess}    xpath=//div[@class='result']

*** Keywords ***
 Click the Login element
    Click Element    ${login}
 
 Fill the Login Form
     [Arguments]    ${username}    ${password}
     Input Text     ${email}    ${username}
     Input Text     ${passwords}     ${password}
 
 Fill the email
     [Arguments]    ${username}    
     Input Text     ${email}    ${username}
    
 Click Forgot password
     Click Element    ${forgot_pass}
    
 Enter the mail
    [Arguments]    ${username}
    Input Text     ${for_email}    ${username}

 Click the recover button    
     Click Element    ${recover}

 Click the login button
     Click Element    ${login_btn}
 
 click the check box of remember me
     Checkbox Should Be Selected    ${remember_me}
    
 check for forgot success message
      Element Text Should Be    ${for_sucess}    Email with instructions has been sent to you.
 
 Check the login page message
    [Arguments]    ${username}
     Element Text Should Be    ${login_msg}    ${username}

 Check for the Invalid msg
     Element Text Should Be    ${invalid_msg}    ${invalids_msg}

