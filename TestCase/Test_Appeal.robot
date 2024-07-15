*** Settings ***
Documentation     Test the sort values in the page
Library    SeleniumLibrary
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/ApparealResources.robot
Test Setup    open the browser
Test Teardown    close browser session
*** Test Cases ***
    
verify the element of A to Z
    [Tags]    smoke
    ApparealResources.click the appereal A to z

Verify the element of Z to A
    [Tags]    smoke
    ApparealResources.click the appereal z to A

verify the element of low to high
    ApparealResources.click the appereal low to high

verify the element of high to low
    ApparealResources.click the appereal high to low

verify the element of created on
    [Tags]    regreesion
    ApparealResources.click the appereal created on

