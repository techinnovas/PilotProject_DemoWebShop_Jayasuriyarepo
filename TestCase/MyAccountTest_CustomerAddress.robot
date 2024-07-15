*** Settings ***
Documentation    To validate customer address information
Library    SeleniumLibrary
Test Setup    open the browser
Test Teardown    Close All Browsers
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/MyAccountResources.robot
Library    DataDriver    file=../TestData/Customer_Information.xlsx    sheet_name=Sheet1
Test Template    Validate the Customer Address

*** Variables ***
${_firstname}    
${_lastname}
${_email}
${_company}
${_city}
${_address}
${_zip}
${_phone}

*** Test Cases ***
Validate the Customer Address
    ${_firstname}    ${_lastname}    ${_email}    ${_company}    ${_city}    ${_address}    ${_zip}    ${_phone}

*** Keywords ***
Validate the Customer Address
    [Documentation]    This test case will validate the customer address
    [Arguments]    ${_firstname}    ${_lastname}    ${_email}    ${_company}    ${_city}    ${_address}    ${_zip}    ${_phone}
    MyAccountResources.Fill login email
    MyAccountResources.Click account
    MyAccountResources.Click the addresses button
    MyAccountResources.Click new address button in the address page
    MyAccountResources.Check whether the Add new address is visible
    MyAccountResources.Enter the first name in the company field    ${_firstname}
    MyAccountResources.Enter the last name in the company field    ${_lastname}
    MyAccountResources.Enter the email in the company field    ${_email}
    MyAccountResources.Enter company in the company field    ${_company}
    MyAccountResources.Click country in the dropdown 
    MyAccountResources.Select country in the dropdown
    MyAccountResources.Enter city in the city text field    ${_city}
    MyAccountResources.Enter address1 in the address field    ${_address}
    MyAccountResources.Enter zip or postal number in the field    ${_zip}
    MyAccountResources.Enter phone number in the phone number field    ${_phone}
    MyAccountResources.Click save button
