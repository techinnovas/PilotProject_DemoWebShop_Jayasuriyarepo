*** Settings ***
Documentation        Test the invalid credentials to the login page
Library    SeleniumLibrary
Library    DataDriver    file=../TestData/Register_Data.xlsx    sheet_name=register
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/RegisterResources.robot
Test Setup    open the browser
Test Teardown    close browser session
Test Template    Register test template

*** Variables ***
${firstname}  
${lastname}
${email}
${passw}
${confirm_pass}

*** Test Cases ***
Register fields    ${firstname}    ${lastname}    ${email}    ${passw}    ${confirm_pass}

*** Keywords ***
Register test template
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${passw}    ${confirm_pass}
    ${random_email}=    Generate Random Email
    RegisterResources.click the register list
    RegisterResources.Select the male radiobutton
    RegisterResources.Enter the value in the input field    ${firstname}    ${lastname}    ${random_email}    ${passw}    ${confirm_pass}
    RegisterResources.Click the register button
    RegisterResources.check for the success msg

Generate Random Email
    [Arguments]    ${length}=7
    ${random_email}=    Evaluate    ''.join(random.choices(string.ascii_lowercase, k=${length})) + '@gmail.com'    random, string
    RETURN    ${random_email}
