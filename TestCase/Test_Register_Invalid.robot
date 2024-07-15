*** Settings ***
Documentation        Test the invalid credentials to the login page
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/RegisterResources.robot
Test Setup    open the browser
Test Teardown    close browser session
Library    DataDriver    file=../TestData/Register_Data.xlsx    sheet_name=register
Test Template    Register for invalid value

*** Variables ***
${firstname}  
${lastname}
${email}
${passw}
${confirm_pass}

*** Test Cases ***

Register fields     ${lastname}    ${email}    ${passw}    ${confirm_pass}
    
*** Keywords ***
Register for invalid value
    RegisterResources.click the register list
    RegisterResources.Select the female radiobutton
    [Arguments]       ${lastname}    ${email}    ${passw}    ${confirm_pass}   
    RegisterResources.Empty of first name    ${lastname}    ${email}    ${passw}    ${confirm_pass}   
    RegisterResources.Click the register button
    RegisterResources.check for the invalid msg