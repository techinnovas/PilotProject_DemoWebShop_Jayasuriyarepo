*** Settings ***
Documentation    Test the Valid information to the login page
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/LoginResources.robot
Test Setup    open the browser
Test Teardown    close browser session
Library    DataDriver    file=../TestData/Login_Data.xlsx     sheet_name=ValidLogin
Test Template    Login postive testcase1

*** Variables ***
${username}    
${password}    

*** Test Cases ***

Login test template   ${username}       ${password}
   

*** Keywords ***
Login postive testcase1
    [Arguments]    ${username}    ${password}
    LoginResources. Click the Login element
    LoginResources. Fill the Login Form     ${username}    ${password}
    LoginResources. Click the login button
    LoginResources. Check the login page message    ${username}

    

