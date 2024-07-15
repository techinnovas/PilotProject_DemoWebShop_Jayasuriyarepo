*** Settings ***
Documentation    To validate login and profile information
Library    SeleniumLibrary
Test Setup    open the browser
Test Teardown    Close All Browsers
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/MyAccountResources.robot
Library    DataDriver    file=../TestData/Customer_Information.xlsx    sheet_name=Sheet1
Test Template    Validate the MyAccount information

*** Variables ***
${_firstname}    
${_lastname}
${_email}
${clickaccount}    xpath:(//li/a)[1]
*** Test Cases ***
Validate MyAccount Information
    ${_firstname}    ${_lastname}    ${_email}

*** Keywords ***
Validate the MyAccount information
    [Documentation]    This test case will validate the customer info
    [Arguments]    ${_firstname}    ${_lastname}    ${_email}
    MyAccountResources.Fill login email
    MyAccountResources.Click account
    MyAccountResources.Click the gender in checkbox field
    MyAccountResources.Enter first name in the firstname field    ${_firstname}
    MyAccountResources.Enter last name in the lastname field    ${_lastname}
    MyAccountResources.Enter email id in the email field    ${_email}
    MyAccountResources.Click save button
