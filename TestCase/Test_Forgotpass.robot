*** Settings ***
Documentation    Test the Valid information to the login page
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/LoginResources.robot
Test Setup    open the browser
Test Teardown    close browser session
Library    DataDriver    file=../TestData/Login_Data.xlsx     sheet_name=ValidLogin
Test Template    Forgot password 

*** Variables ***
${username}    
  

*** Test Cases ***

Forgot password for email   ${username}     

*** Keywords ***
Forgot password 
    [Arguments]    ${username}
    LoginResources. Click the Login element
    LoginResources. Fill the email    ${username}
    LoginResources.Click Forgot password
    LoginResources. Enter the mail    ${username}
    LoginResources. Click the recover button
    LoginResources. check for forgot success message




