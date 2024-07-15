*** Settings ***
Documentation        A resource file with reusable variables and keywords
Library        SeleniumLibrary

*** Variables ***
${url}    https://demowebshop.tricentis.com/
${browser_name}    Chrome

*** Keywords ***
Open the Browser
    [Arguments]    ${url}=${url}    ${browser_name}=${browser_name}
    Open Browser    ${url}    ${browser_name}
    Maximize Browser Window
    Set Selenium Implicit Wait    10 seconds

Close Browser Session
    Close Browser
