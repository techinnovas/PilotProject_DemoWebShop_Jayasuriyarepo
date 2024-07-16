*** Settings ***
Documentation    Test the Valid information to the login page
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/Loginresourcebook.robot
Resource    ../Resources/bookmoduleresource.robot
Test Setup    GenericResources.Open the Browser
Test Teardown    GenericResources.Close Browser Session
Library    DataDriver    file=../TestData/Login_Book_Data.xlsx     sheet_name=ValidLogin
Test Template    Login postive testcase1

*** Variables ***
${username}    
${password}    

*** Test Cases ***

Login test template   ${username}       ${password}
   

*** Keywords ***
Login postive testcase1
    [Arguments]    ${username}    ${password}
    Loginresourcebook. Click on login element
    Loginresourcebook. Fill Login credentials    ${username}    ${password}
    Loginresourcebook. Click the login button
    Loginresourcebook. Check the login page message    ${username}
    bookmoduleresource.To click book option
    bookmoduleresource.Verifiying in book page

    

