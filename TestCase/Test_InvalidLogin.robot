*** Settings ***
Documentation        Test the invalid credentials to the login page
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/LoginResources.robot
Test Setup    open the browser
Test Teardown    close browser session
Library    DataDriver    file=../TestData/Invalidlogin_Data.xlsx    sheet_name=Invalid_Login
Test Template    InvalidLogin test template     

*** Variables ***
${username}    roshini
${password}    rose

*** Test Cases ***
Invalid Login test
    #[Template]    InvalidLogin test template
    ${username}    ${password}

*** Keywords ***
InvalidLogin test template
    [Arguments]    ${username}    ${password}
    LoginResources. Click the Login element
    LoginResources. Fill the Login Form    ${username}    ${password}
    LoginResources. Click the login button
    LoginResources. Check for the Invalid msg

